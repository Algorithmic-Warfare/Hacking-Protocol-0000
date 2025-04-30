import { ParcnetPODCollectionWrapper } from "@parcnet-js/app-connector";
import * as p from "@parcnet-js/podspec";
import { PODEntries } from "@pcd/pod";
import { z } from "zod";
import { zodParse } from "src/utils/validation";

async function generateKeyPair() {
  const keyPair = await crypto.subtle.generateKey(
    {
      name: "RSA-OAEP",
      modulusLength: 2048,
      publicExponent: new Uint8Array([1, 0, 1]),
      hash: "SHA-256",
    },
    true,
    ["encrypt", "decrypt"]
  );

  // Export the keys
  const publicKeyBuffer = await crypto.subtle.exportKey(
    "spki",
    keyPair.publicKey
  );
  const privateKeyBuffer = await crypto.subtle.exportKey(
    "pkcs8",
    keyPair.privateKey
  );

  // Convert to base64 strings
  const publicKey = btoa(
    String.fromCharCode(...new Uint8Array(publicKeyBuffer))
  );
  const privateKey = btoa(
    String.fromCharCode(...new Uint8Array(privateKeyBuffer))
  );

  return { publicKey, privateKey };
}

const keyPairPodSchema = z.object({
  signature: z.string(),
  signerPublicKey: z.string(),
  entries: z.object({
    pod_type: z.object({
      type: z.literal("string"),
      value: z.literal("hacking-protocol.key_pair"),
    }),
    issuedAt: z.object({
      type: z.literal("date"),
      value: z.date(),
    }),
    privateKey: z.object({
      type: z.literal("string"),
      value: z.string(),
    }),
    publicKey: z.object({
      type: z.literal("string"),
      value: z.string(),
    }),
  }),
});

export type KeyPair = {
  publicKey: string;
  privateKey: string;
};

export async function loadUserKeyPair(
  store: ParcnetPODCollectionWrapper,
  signer: (pod: PODEntries) => Promise<p.PODData>
): Promise<KeyPair> {
  console.log("loadZuPassKeyPair");
  const r = await store.query(
    p.pod({
      entries: {
        pod_type: {
          type: "string",
          isMemberOf: [{ type: "string", value: "hacking-protocol.key_pair" }],
        },
      },
    })
  );

  const pair = r[0];

  if (!pair) {
    const newPair = await generateKeyPair();
    const podData: PODEntries = {
      pod_type: { type: "string", value: "hacking-protocol.key_pair" },
      publicKey: { type: "string", value: newPair.publicKey },
      privateKey: { type: "string", value: newPair.privateKey },
      issuedAt: { type: "date", value: new Date() },
    };
    const signedPod = await signer(podData);
    store.insert(signedPod);
    return newPair;
  }

  const parsed = zodParse(keyPairPodSchema, pair);

  return {
    publicKey: parsed.entries.publicKey.value,
    privateKey: parsed.entries.privateKey.value,
  };
}
