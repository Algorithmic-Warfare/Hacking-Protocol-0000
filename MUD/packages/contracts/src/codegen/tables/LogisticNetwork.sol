// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

/* Autogenerated file. Do not edit manually. */

// Import store internals
import { IStore } from "@latticexyz/store/src/IStore.sol";
import { StoreSwitch } from "@latticexyz/store/src/StoreSwitch.sol";
import { StoreCore } from "@latticexyz/store/src/StoreCore.sol";
import { Bytes } from "@latticexyz/store/src/Bytes.sol";
import { Memory } from "@latticexyz/store/src/Memory.sol";
import { SliceLib } from "@latticexyz/store/src/Slice.sol";
import { EncodeArray } from "@latticexyz/store/src/tightcoder/EncodeArray.sol";
import { FieldLayout } from "@latticexyz/store/src/FieldLayout.sol";
import { Schema } from "@latticexyz/store/src/Schema.sol";
import { EncodedLengths, EncodedLengthsLib } from "@latticexyz/store/src/EncodedLengths.sol";
import { ResourceId } from "@latticexyz/store/src/ResourceId.sol";

struct LogisticNetworkData {
  uint256 timestamp;
  uint256 providerId;
  string codename;
  uint256[] depotIds;
  uint256[] coordinatorIds;
  uint256[] fixtureIds;
}

library LogisticNetwork {
  // Hex below is the result of `WorldResourceIdLib.encode({ namespace: "AWAR", name: "LogisticNetwork", typeId: RESOURCE_TABLE });`
  ResourceId constant _tableId = ResourceId.wrap(0x746241574152000000000000000000004c6f6769737469634e6574776f726b00);

  FieldLayout constant _fieldLayout =
    FieldLayout.wrap(0x0040020420200000000000000000000000000000000000000000000000000000);

  // Hex-encoded key schema of (uint256)
  Schema constant _keySchema = Schema.wrap(0x002001001f000000000000000000000000000000000000000000000000000000);
  // Hex-encoded value schema of (uint256, uint256, string, uint256[], uint256[], uint256[])
  Schema constant _valueSchema = Schema.wrap(0x004002041f1fc581818100000000000000000000000000000000000000000000);

  /**
   * @notice Get the table's key field names.
   * @return keyNames An array of strings with the names of key fields.
   */
  function getKeyNames() internal pure returns (string[] memory keyNames) {
    keyNames = new string[](1);
    keyNames[0] = "id";
  }

  /**
   * @notice Get the table's value field names.
   * @return fieldNames An array of strings with the names of value fields.
   */
  function getFieldNames() internal pure returns (string[] memory fieldNames) {
    fieldNames = new string[](6);
    fieldNames[0] = "timestamp";
    fieldNames[1] = "providerId";
    fieldNames[2] = "codename";
    fieldNames[3] = "depotIds";
    fieldNames[4] = "coordinatorIds";
    fieldNames[5] = "fixtureIds";
  }

  /**
   * @notice Register the table with its config.
   */
  function register() internal {
    StoreSwitch.registerTable(_tableId, _fieldLayout, _keySchema, _valueSchema, getKeyNames(), getFieldNames());
  }

  /**
   * @notice Register the table with its config.
   */
  function _register() internal {
    StoreCore.registerTable(_tableId, _fieldLayout, _keySchema, _valueSchema, getKeyNames(), getFieldNames());
  }

  /**
   * @notice Get timestamp.
   */
  function getTimestamp(uint256 id) internal view returns (uint256 timestamp) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (uint256(bytes32(_blob)));
  }

  /**
   * @notice Get timestamp.
   */
  function _getTimestamp(uint256 id) internal view returns (uint256 timestamp) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (uint256(bytes32(_blob)));
  }

  /**
   * @notice Set timestamp.
   */
  function setTimestamp(uint256 id, uint256 timestamp) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreSwitch.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked((timestamp)), _fieldLayout);
  }

  /**
   * @notice Set timestamp.
   */
  function _setTimestamp(uint256 id, uint256 timestamp) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreCore.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked((timestamp)), _fieldLayout);
  }

  /**
   * @notice Get providerId.
   */
  function getProviderId(uint256 id) internal view returns (uint256 providerId) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 1, _fieldLayout);
    return (uint256(bytes32(_blob)));
  }

  /**
   * @notice Get providerId.
   */
  function _getProviderId(uint256 id) internal view returns (uint256 providerId) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 1, _fieldLayout);
    return (uint256(bytes32(_blob)));
  }

  /**
   * @notice Set providerId.
   */
  function setProviderId(uint256 id, uint256 providerId) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreSwitch.setStaticField(_tableId, _keyTuple, 1, abi.encodePacked((providerId)), _fieldLayout);
  }

  /**
   * @notice Set providerId.
   */
  function _setProviderId(uint256 id, uint256 providerId) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreCore.setStaticField(_tableId, _keyTuple, 1, abi.encodePacked((providerId)), _fieldLayout);
  }

  /**
   * @notice Get codename.
   */
  function getCodename(uint256 id) internal view returns (string memory codename) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    bytes memory _blob = StoreSwitch.getDynamicField(_tableId, _keyTuple, 0);
    return (string(_blob));
  }

  /**
   * @notice Get codename.
   */
  function _getCodename(uint256 id) internal view returns (string memory codename) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    bytes memory _blob = StoreCore.getDynamicField(_tableId, _keyTuple, 0);
    return (string(_blob));
  }

  /**
   * @notice Set codename.
   */
  function setCodename(uint256 id, string memory codename) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreSwitch.setDynamicField(_tableId, _keyTuple, 0, bytes((codename)));
  }

  /**
   * @notice Set codename.
   */
  function _setCodename(uint256 id, string memory codename) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreCore.setDynamicField(_tableId, _keyTuple, 0, bytes((codename)));
  }

  /**
   * @notice Get the length of codename.
   */
  function lengthCodename(uint256 id) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    uint256 _byteLength = StoreSwitch.getDynamicFieldLength(_tableId, _keyTuple, 0);
    unchecked {
      return _byteLength / 1;
    }
  }

  /**
   * @notice Get the length of codename.
   */
  function _lengthCodename(uint256 id) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    uint256 _byteLength = StoreCore.getDynamicFieldLength(_tableId, _keyTuple, 0);
    unchecked {
      return _byteLength / 1;
    }
  }

  /**
   * @notice Get an item of codename.
   * @dev Reverts with Store_IndexOutOfBounds if `_index` is out of bounds for the array.
   */
  function getItemCodename(uint256 id, uint256 _index) internal view returns (string memory) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    unchecked {
      bytes memory _blob = StoreSwitch.getDynamicFieldSlice(_tableId, _keyTuple, 0, _index * 1, (_index + 1) * 1);
      return (string(_blob));
    }
  }

  /**
   * @notice Get an item of codename.
   * @dev Reverts with Store_IndexOutOfBounds if `_index` is out of bounds for the array.
   */
  function _getItemCodename(uint256 id, uint256 _index) internal view returns (string memory) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    unchecked {
      bytes memory _blob = StoreCore.getDynamicFieldSlice(_tableId, _keyTuple, 0, _index * 1, (_index + 1) * 1);
      return (string(_blob));
    }
  }

  /**
   * @notice Push a slice to codename.
   */
  function pushCodename(uint256 id, string memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreSwitch.pushToDynamicField(_tableId, _keyTuple, 0, bytes((_slice)));
  }

  /**
   * @notice Push a slice to codename.
   */
  function _pushCodename(uint256 id, string memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreCore.pushToDynamicField(_tableId, _keyTuple, 0, bytes((_slice)));
  }

  /**
   * @notice Pop a slice from codename.
   */
  function popCodename(uint256 id) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreSwitch.popFromDynamicField(_tableId, _keyTuple, 0, 1);
  }

  /**
   * @notice Pop a slice from codename.
   */
  function _popCodename(uint256 id) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreCore.popFromDynamicField(_tableId, _keyTuple, 0, 1);
  }

  /**
   * @notice Update a slice of codename at `_index`.
   */
  function updateCodename(uint256 id, uint256 _index, string memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    unchecked {
      bytes memory _encoded = bytes((_slice));
      StoreSwitch.spliceDynamicData(_tableId, _keyTuple, 0, uint40(_index * 1), uint40(_encoded.length), _encoded);
    }
  }

  /**
   * @notice Update a slice of codename at `_index`.
   */
  function _updateCodename(uint256 id, uint256 _index, string memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    unchecked {
      bytes memory _encoded = bytes((_slice));
      StoreCore.spliceDynamicData(_tableId, _keyTuple, 0, uint40(_index * 1), uint40(_encoded.length), _encoded);
    }
  }

  /**
   * @notice Get depotIds.
   */
  function getDepotIds(uint256 id) internal view returns (uint256[] memory depotIds) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    bytes memory _blob = StoreSwitch.getDynamicField(_tableId, _keyTuple, 1);
    return (SliceLib.getSubslice(_blob, 0, _blob.length).decodeArray_uint256());
  }

  /**
   * @notice Get depotIds.
   */
  function _getDepotIds(uint256 id) internal view returns (uint256[] memory depotIds) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    bytes memory _blob = StoreCore.getDynamicField(_tableId, _keyTuple, 1);
    return (SliceLib.getSubslice(_blob, 0, _blob.length).decodeArray_uint256());
  }

  /**
   * @notice Set depotIds.
   */
  function setDepotIds(uint256 id, uint256[] memory depotIds) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreSwitch.setDynamicField(_tableId, _keyTuple, 1, EncodeArray.encode((depotIds)));
  }

  /**
   * @notice Set depotIds.
   */
  function _setDepotIds(uint256 id, uint256[] memory depotIds) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreCore.setDynamicField(_tableId, _keyTuple, 1, EncodeArray.encode((depotIds)));
  }

  /**
   * @notice Get the length of depotIds.
   */
  function lengthDepotIds(uint256 id) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    uint256 _byteLength = StoreSwitch.getDynamicFieldLength(_tableId, _keyTuple, 1);
    unchecked {
      return _byteLength / 32;
    }
  }

  /**
   * @notice Get the length of depotIds.
   */
  function _lengthDepotIds(uint256 id) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    uint256 _byteLength = StoreCore.getDynamicFieldLength(_tableId, _keyTuple, 1);
    unchecked {
      return _byteLength / 32;
    }
  }

  /**
   * @notice Get an item of depotIds.
   * @dev Reverts with Store_IndexOutOfBounds if `_index` is out of bounds for the array.
   */
  function getItemDepotIds(uint256 id, uint256 _index) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    unchecked {
      bytes memory _blob = StoreSwitch.getDynamicFieldSlice(_tableId, _keyTuple, 1, _index * 32, (_index + 1) * 32);
      return (uint256(bytes32(_blob)));
    }
  }

  /**
   * @notice Get an item of depotIds.
   * @dev Reverts with Store_IndexOutOfBounds if `_index` is out of bounds for the array.
   */
  function _getItemDepotIds(uint256 id, uint256 _index) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    unchecked {
      bytes memory _blob = StoreCore.getDynamicFieldSlice(_tableId, _keyTuple, 1, _index * 32, (_index + 1) * 32);
      return (uint256(bytes32(_blob)));
    }
  }

  /**
   * @notice Push an element to depotIds.
   */
  function pushDepotIds(uint256 id, uint256 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreSwitch.pushToDynamicField(_tableId, _keyTuple, 1, abi.encodePacked((_element)));
  }

  /**
   * @notice Push an element to depotIds.
   */
  function _pushDepotIds(uint256 id, uint256 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreCore.pushToDynamicField(_tableId, _keyTuple, 1, abi.encodePacked((_element)));
  }

  /**
   * @notice Pop an element from depotIds.
   */
  function popDepotIds(uint256 id) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreSwitch.popFromDynamicField(_tableId, _keyTuple, 1, 32);
  }

  /**
   * @notice Pop an element from depotIds.
   */
  function _popDepotIds(uint256 id) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreCore.popFromDynamicField(_tableId, _keyTuple, 1, 32);
  }

  /**
   * @notice Update an element of depotIds at `_index`.
   */
  function updateDepotIds(uint256 id, uint256 _index, uint256 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    unchecked {
      bytes memory _encoded = abi.encodePacked((_element));
      StoreSwitch.spliceDynamicData(_tableId, _keyTuple, 1, uint40(_index * 32), uint40(_encoded.length), _encoded);
    }
  }

  /**
   * @notice Update an element of depotIds at `_index`.
   */
  function _updateDepotIds(uint256 id, uint256 _index, uint256 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    unchecked {
      bytes memory _encoded = abi.encodePacked((_element));
      StoreCore.spliceDynamicData(_tableId, _keyTuple, 1, uint40(_index * 32), uint40(_encoded.length), _encoded);
    }
  }

  /**
   * @notice Get coordinatorIds.
   */
  function getCoordinatorIds(uint256 id) internal view returns (uint256[] memory coordinatorIds) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    bytes memory _blob = StoreSwitch.getDynamicField(_tableId, _keyTuple, 2);
    return (SliceLib.getSubslice(_blob, 0, _blob.length).decodeArray_uint256());
  }

  /**
   * @notice Get coordinatorIds.
   */
  function _getCoordinatorIds(uint256 id) internal view returns (uint256[] memory coordinatorIds) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    bytes memory _blob = StoreCore.getDynamicField(_tableId, _keyTuple, 2);
    return (SliceLib.getSubslice(_blob, 0, _blob.length).decodeArray_uint256());
  }

  /**
   * @notice Set coordinatorIds.
   */
  function setCoordinatorIds(uint256 id, uint256[] memory coordinatorIds) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreSwitch.setDynamicField(_tableId, _keyTuple, 2, EncodeArray.encode((coordinatorIds)));
  }

  /**
   * @notice Set coordinatorIds.
   */
  function _setCoordinatorIds(uint256 id, uint256[] memory coordinatorIds) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreCore.setDynamicField(_tableId, _keyTuple, 2, EncodeArray.encode((coordinatorIds)));
  }

  /**
   * @notice Get the length of coordinatorIds.
   */
  function lengthCoordinatorIds(uint256 id) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    uint256 _byteLength = StoreSwitch.getDynamicFieldLength(_tableId, _keyTuple, 2);
    unchecked {
      return _byteLength / 32;
    }
  }

  /**
   * @notice Get the length of coordinatorIds.
   */
  function _lengthCoordinatorIds(uint256 id) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    uint256 _byteLength = StoreCore.getDynamicFieldLength(_tableId, _keyTuple, 2);
    unchecked {
      return _byteLength / 32;
    }
  }

  /**
   * @notice Get an item of coordinatorIds.
   * @dev Reverts with Store_IndexOutOfBounds if `_index` is out of bounds for the array.
   */
  function getItemCoordinatorIds(uint256 id, uint256 _index) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    unchecked {
      bytes memory _blob = StoreSwitch.getDynamicFieldSlice(_tableId, _keyTuple, 2, _index * 32, (_index + 1) * 32);
      return (uint256(bytes32(_blob)));
    }
  }

  /**
   * @notice Get an item of coordinatorIds.
   * @dev Reverts with Store_IndexOutOfBounds if `_index` is out of bounds for the array.
   */
  function _getItemCoordinatorIds(uint256 id, uint256 _index) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    unchecked {
      bytes memory _blob = StoreCore.getDynamicFieldSlice(_tableId, _keyTuple, 2, _index * 32, (_index + 1) * 32);
      return (uint256(bytes32(_blob)));
    }
  }

  /**
   * @notice Push an element to coordinatorIds.
   */
  function pushCoordinatorIds(uint256 id, uint256 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreSwitch.pushToDynamicField(_tableId, _keyTuple, 2, abi.encodePacked((_element)));
  }

  /**
   * @notice Push an element to coordinatorIds.
   */
  function _pushCoordinatorIds(uint256 id, uint256 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreCore.pushToDynamicField(_tableId, _keyTuple, 2, abi.encodePacked((_element)));
  }

  /**
   * @notice Pop an element from coordinatorIds.
   */
  function popCoordinatorIds(uint256 id) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreSwitch.popFromDynamicField(_tableId, _keyTuple, 2, 32);
  }

  /**
   * @notice Pop an element from coordinatorIds.
   */
  function _popCoordinatorIds(uint256 id) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreCore.popFromDynamicField(_tableId, _keyTuple, 2, 32);
  }

  /**
   * @notice Update an element of coordinatorIds at `_index`.
   */
  function updateCoordinatorIds(uint256 id, uint256 _index, uint256 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    unchecked {
      bytes memory _encoded = abi.encodePacked((_element));
      StoreSwitch.spliceDynamicData(_tableId, _keyTuple, 2, uint40(_index * 32), uint40(_encoded.length), _encoded);
    }
  }

  /**
   * @notice Update an element of coordinatorIds at `_index`.
   */
  function _updateCoordinatorIds(uint256 id, uint256 _index, uint256 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    unchecked {
      bytes memory _encoded = abi.encodePacked((_element));
      StoreCore.spliceDynamicData(_tableId, _keyTuple, 2, uint40(_index * 32), uint40(_encoded.length), _encoded);
    }
  }

  /**
   * @notice Get fixtureIds.
   */
  function getFixtureIds(uint256 id) internal view returns (uint256[] memory fixtureIds) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    bytes memory _blob = StoreSwitch.getDynamicField(_tableId, _keyTuple, 3);
    return (SliceLib.getSubslice(_blob, 0, _blob.length).decodeArray_uint256());
  }

  /**
   * @notice Get fixtureIds.
   */
  function _getFixtureIds(uint256 id) internal view returns (uint256[] memory fixtureIds) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    bytes memory _blob = StoreCore.getDynamicField(_tableId, _keyTuple, 3);
    return (SliceLib.getSubslice(_blob, 0, _blob.length).decodeArray_uint256());
  }

  /**
   * @notice Set fixtureIds.
   */
  function setFixtureIds(uint256 id, uint256[] memory fixtureIds) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreSwitch.setDynamicField(_tableId, _keyTuple, 3, EncodeArray.encode((fixtureIds)));
  }

  /**
   * @notice Set fixtureIds.
   */
  function _setFixtureIds(uint256 id, uint256[] memory fixtureIds) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreCore.setDynamicField(_tableId, _keyTuple, 3, EncodeArray.encode((fixtureIds)));
  }

  /**
   * @notice Get the length of fixtureIds.
   */
  function lengthFixtureIds(uint256 id) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    uint256 _byteLength = StoreSwitch.getDynamicFieldLength(_tableId, _keyTuple, 3);
    unchecked {
      return _byteLength / 32;
    }
  }

  /**
   * @notice Get the length of fixtureIds.
   */
  function _lengthFixtureIds(uint256 id) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    uint256 _byteLength = StoreCore.getDynamicFieldLength(_tableId, _keyTuple, 3);
    unchecked {
      return _byteLength / 32;
    }
  }

  /**
   * @notice Get an item of fixtureIds.
   * @dev Reverts with Store_IndexOutOfBounds if `_index` is out of bounds for the array.
   */
  function getItemFixtureIds(uint256 id, uint256 _index) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    unchecked {
      bytes memory _blob = StoreSwitch.getDynamicFieldSlice(_tableId, _keyTuple, 3, _index * 32, (_index + 1) * 32);
      return (uint256(bytes32(_blob)));
    }
  }

  /**
   * @notice Get an item of fixtureIds.
   * @dev Reverts with Store_IndexOutOfBounds if `_index` is out of bounds for the array.
   */
  function _getItemFixtureIds(uint256 id, uint256 _index) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    unchecked {
      bytes memory _blob = StoreCore.getDynamicFieldSlice(_tableId, _keyTuple, 3, _index * 32, (_index + 1) * 32);
      return (uint256(bytes32(_blob)));
    }
  }

  /**
   * @notice Push an element to fixtureIds.
   */
  function pushFixtureIds(uint256 id, uint256 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreSwitch.pushToDynamicField(_tableId, _keyTuple, 3, abi.encodePacked((_element)));
  }

  /**
   * @notice Push an element to fixtureIds.
   */
  function _pushFixtureIds(uint256 id, uint256 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreCore.pushToDynamicField(_tableId, _keyTuple, 3, abi.encodePacked((_element)));
  }

  /**
   * @notice Pop an element from fixtureIds.
   */
  function popFixtureIds(uint256 id) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreSwitch.popFromDynamicField(_tableId, _keyTuple, 3, 32);
  }

  /**
   * @notice Pop an element from fixtureIds.
   */
  function _popFixtureIds(uint256 id) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreCore.popFromDynamicField(_tableId, _keyTuple, 3, 32);
  }

  /**
   * @notice Update an element of fixtureIds at `_index`.
   */
  function updateFixtureIds(uint256 id, uint256 _index, uint256 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    unchecked {
      bytes memory _encoded = abi.encodePacked((_element));
      StoreSwitch.spliceDynamicData(_tableId, _keyTuple, 3, uint40(_index * 32), uint40(_encoded.length), _encoded);
    }
  }

  /**
   * @notice Update an element of fixtureIds at `_index`.
   */
  function _updateFixtureIds(uint256 id, uint256 _index, uint256 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    unchecked {
      bytes memory _encoded = abi.encodePacked((_element));
      StoreCore.spliceDynamicData(_tableId, _keyTuple, 3, uint40(_index * 32), uint40(_encoded.length), _encoded);
    }
  }

  /**
   * @notice Get the full data.
   */
  function get(uint256 id) internal view returns (LogisticNetworkData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    (bytes memory _staticData, EncodedLengths _encodedLengths, bytes memory _dynamicData) = StoreSwitch.getRecord(
      _tableId,
      _keyTuple,
      _fieldLayout
    );
    return decode(_staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Get the full data.
   */
  function _get(uint256 id) internal view returns (LogisticNetworkData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    (bytes memory _staticData, EncodedLengths _encodedLengths, bytes memory _dynamicData) = StoreCore.getRecord(
      _tableId,
      _keyTuple,
      _fieldLayout
    );
    return decode(_staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Set the full data using individual values.
   */
  function set(
    uint256 id,
    uint256 timestamp,
    uint256 providerId,
    string memory codename,
    uint256[] memory depotIds,
    uint256[] memory coordinatorIds,
    uint256[] memory fixtureIds
  ) internal {
    bytes memory _staticData = encodeStatic(timestamp, providerId);

    EncodedLengths _encodedLengths = encodeLengths(codename, depotIds, coordinatorIds, fixtureIds);
    bytes memory _dynamicData = encodeDynamic(codename, depotIds, coordinatorIds, fixtureIds);

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreSwitch.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Set the full data using individual values.
   */
  function _set(
    uint256 id,
    uint256 timestamp,
    uint256 providerId,
    string memory codename,
    uint256[] memory depotIds,
    uint256[] memory coordinatorIds,
    uint256[] memory fixtureIds
  ) internal {
    bytes memory _staticData = encodeStatic(timestamp, providerId);

    EncodedLengths _encodedLengths = encodeLengths(codename, depotIds, coordinatorIds, fixtureIds);
    bytes memory _dynamicData = encodeDynamic(codename, depotIds, coordinatorIds, fixtureIds);

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreCore.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData, _fieldLayout);
  }

  /**
   * @notice Set the full data using the data struct.
   */
  function set(uint256 id, LogisticNetworkData memory _table) internal {
    bytes memory _staticData = encodeStatic(_table.timestamp, _table.providerId);

    EncodedLengths _encodedLengths = encodeLengths(
      _table.codename,
      _table.depotIds,
      _table.coordinatorIds,
      _table.fixtureIds
    );
    bytes memory _dynamicData = encodeDynamic(
      _table.codename,
      _table.depotIds,
      _table.coordinatorIds,
      _table.fixtureIds
    );

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreSwitch.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Set the full data using the data struct.
   */
  function _set(uint256 id, LogisticNetworkData memory _table) internal {
    bytes memory _staticData = encodeStatic(_table.timestamp, _table.providerId);

    EncodedLengths _encodedLengths = encodeLengths(
      _table.codename,
      _table.depotIds,
      _table.coordinatorIds,
      _table.fixtureIds
    );
    bytes memory _dynamicData = encodeDynamic(
      _table.codename,
      _table.depotIds,
      _table.coordinatorIds,
      _table.fixtureIds
    );

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreCore.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData, _fieldLayout);
  }

  /**
   * @notice Decode the tightly packed blob of static data using this table's field layout.
   */
  function decodeStatic(bytes memory _blob) internal pure returns (uint256 timestamp, uint256 providerId) {
    timestamp = (uint256(Bytes.getBytes32(_blob, 0)));

    providerId = (uint256(Bytes.getBytes32(_blob, 32)));
  }

  /**
   * @notice Decode the tightly packed blob of dynamic data using the encoded lengths.
   */
  function decodeDynamic(
    EncodedLengths _encodedLengths,
    bytes memory _blob
  )
    internal
    pure
    returns (
      string memory codename,
      uint256[] memory depotIds,
      uint256[] memory coordinatorIds,
      uint256[] memory fixtureIds
    )
  {
    uint256 _start;
    uint256 _end;
    unchecked {
      _end = _encodedLengths.atIndex(0);
    }
    codename = (string(SliceLib.getSubslice(_blob, _start, _end).toBytes()));

    _start = _end;
    unchecked {
      _end += _encodedLengths.atIndex(1);
    }
    depotIds = (SliceLib.getSubslice(_blob, _start, _end).decodeArray_uint256());

    _start = _end;
    unchecked {
      _end += _encodedLengths.atIndex(2);
    }
    coordinatorIds = (SliceLib.getSubslice(_blob, _start, _end).decodeArray_uint256());

    _start = _end;
    unchecked {
      _end += _encodedLengths.atIndex(3);
    }
    fixtureIds = (SliceLib.getSubslice(_blob, _start, _end).decodeArray_uint256());
  }

  /**
   * @notice Decode the tightly packed blobs using this table's field layout.
   * @param _staticData Tightly packed static fields.
   * @param _encodedLengths Encoded lengths of dynamic fields.
   * @param _dynamicData Tightly packed dynamic fields.
   */
  function decode(
    bytes memory _staticData,
    EncodedLengths _encodedLengths,
    bytes memory _dynamicData
  ) internal pure returns (LogisticNetworkData memory _table) {
    (_table.timestamp, _table.providerId) = decodeStatic(_staticData);

    (_table.codename, _table.depotIds, _table.coordinatorIds, _table.fixtureIds) = decodeDynamic(
      _encodedLengths,
      _dynamicData
    );
  }

  /**
   * @notice Delete all data for given keys.
   */
  function deleteRecord(uint256 id) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreSwitch.deleteRecord(_tableId, _keyTuple);
  }

  /**
   * @notice Delete all data for given keys.
   */
  function _deleteRecord(uint256 id) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreCore.deleteRecord(_tableId, _keyTuple, _fieldLayout);
  }

  /**
   * @notice Tightly pack static (fixed length) data using this table's schema.
   * @return The static data, encoded into a sequence of bytes.
   */
  function encodeStatic(uint256 timestamp, uint256 providerId) internal pure returns (bytes memory) {
    return abi.encodePacked(timestamp, providerId);
  }

  /**
   * @notice Tightly pack dynamic data lengths using this table's schema.
   * @return _encodedLengths The lengths of the dynamic fields (packed into a single bytes32 value).
   */
  function encodeLengths(
    string memory codename,
    uint256[] memory depotIds,
    uint256[] memory coordinatorIds,
    uint256[] memory fixtureIds
  ) internal pure returns (EncodedLengths _encodedLengths) {
    // Lengths are effectively checked during copy by 2**40 bytes exceeding gas limits
    unchecked {
      _encodedLengths = EncodedLengthsLib.pack(
        bytes(codename).length,
        depotIds.length * 32,
        coordinatorIds.length * 32,
        fixtureIds.length * 32
      );
    }
  }

  /**
   * @notice Tightly pack dynamic (variable length) data using this table's schema.
   * @return The dynamic data, encoded into a sequence of bytes.
   */
  function encodeDynamic(
    string memory codename,
    uint256[] memory depotIds,
    uint256[] memory coordinatorIds,
    uint256[] memory fixtureIds
  ) internal pure returns (bytes memory) {
    return
      abi.encodePacked(
        bytes((codename)),
        EncodeArray.encode((depotIds)),
        EncodeArray.encode((coordinatorIds)),
        EncodeArray.encode((fixtureIds))
      );
  }

  /**
   * @notice Encode all of a record's fields.
   * @return The static (fixed length) data, encoded into a sequence of bytes.
   * @return The lengths of the dynamic fields (packed into a single bytes32 value).
   * @return The dynamic (variable length) data, encoded into a sequence of bytes.
   */
  function encode(
    uint256 timestamp,
    uint256 providerId,
    string memory codename,
    uint256[] memory depotIds,
    uint256[] memory coordinatorIds,
    uint256[] memory fixtureIds
  ) internal pure returns (bytes memory, EncodedLengths, bytes memory) {
    bytes memory _staticData = encodeStatic(timestamp, providerId);

    EncodedLengths _encodedLengths = encodeLengths(codename, depotIds, coordinatorIds, fixtureIds);
    bytes memory _dynamicData = encodeDynamic(codename, depotIds, coordinatorIds, fixtureIds);

    return (_staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Encode keys as a bytes32 array using this table's field layout.
   */
  function encodeKeyTuple(uint256 id) internal pure returns (bytes32[] memory) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    return _keyTuple;
  }
}
