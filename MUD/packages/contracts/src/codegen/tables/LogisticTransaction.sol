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

// Import user types
import { LogisticTransactionType } from "../common.sol";

struct LogisticTransactionData {
  uint256 timestamp;
  uint256 transactionItemId;
  uint256 transactionItemAmount;
  uint256 agentId;
  uint256 depotId;
  uint256 actionId;
  LogisticTransactionType transactionType;
}

library LogisticTransaction {
  // Hex below is the result of `WorldResourceIdLib.encode({ namespace: "AWAR", name: "LogisticTransact", typeId: RESOURCE_TABLE });`
  ResourceId constant _tableId = ResourceId.wrap(0x746241574152000000000000000000004c6f6769737469635472616e73616374);

  FieldLayout constant _fieldLayout =
    FieldLayout.wrap(0x00c1070020202020202001000000000000000000000000000000000000000000);

  // Hex-encoded key schema of (uint256)
  Schema constant _keySchema = Schema.wrap(0x002001001f000000000000000000000000000000000000000000000000000000);
  // Hex-encoded value schema of (uint256, uint256, uint256, uint256, uint256, uint256, uint8)
  Schema constant _valueSchema = Schema.wrap(0x00c107001f1f1f1f1f1f00000000000000000000000000000000000000000000);

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
    fieldNames = new string[](7);
    fieldNames[0] = "timestamp";
    fieldNames[1] = "transactionItemId";
    fieldNames[2] = "transactionItemAmount";
    fieldNames[3] = "agentId";
    fieldNames[4] = "depotId";
    fieldNames[5] = "actionId";
    fieldNames[6] = "transactionType";
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
   * @notice Get transactionItemId.
   */
  function getTransactionItemId(uint256 id) internal view returns (uint256 transactionItemId) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 1, _fieldLayout);
    return (uint256(bytes32(_blob)));
  }

  /**
   * @notice Get transactionItemId.
   */
  function _getTransactionItemId(uint256 id) internal view returns (uint256 transactionItemId) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 1, _fieldLayout);
    return (uint256(bytes32(_blob)));
  }

  /**
   * @notice Set transactionItemId.
   */
  function setTransactionItemId(uint256 id, uint256 transactionItemId) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreSwitch.setStaticField(_tableId, _keyTuple, 1, abi.encodePacked((transactionItemId)), _fieldLayout);
  }

  /**
   * @notice Set transactionItemId.
   */
  function _setTransactionItemId(uint256 id, uint256 transactionItemId) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreCore.setStaticField(_tableId, _keyTuple, 1, abi.encodePacked((transactionItemId)), _fieldLayout);
  }

  /**
   * @notice Get transactionItemAmount.
   */
  function getTransactionItemAmount(uint256 id) internal view returns (uint256 transactionItemAmount) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 2, _fieldLayout);
    return (uint256(bytes32(_blob)));
  }

  /**
   * @notice Get transactionItemAmount.
   */
  function _getTransactionItemAmount(uint256 id) internal view returns (uint256 transactionItemAmount) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 2, _fieldLayout);
    return (uint256(bytes32(_blob)));
  }

  /**
   * @notice Set transactionItemAmount.
   */
  function setTransactionItemAmount(uint256 id, uint256 transactionItemAmount) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreSwitch.setStaticField(_tableId, _keyTuple, 2, abi.encodePacked((transactionItemAmount)), _fieldLayout);
  }

  /**
   * @notice Set transactionItemAmount.
   */
  function _setTransactionItemAmount(uint256 id, uint256 transactionItemAmount) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreCore.setStaticField(_tableId, _keyTuple, 2, abi.encodePacked((transactionItemAmount)), _fieldLayout);
  }

  /**
   * @notice Get agentId.
   */
  function getAgentId(uint256 id) internal view returns (uint256 agentId) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 3, _fieldLayout);
    return (uint256(bytes32(_blob)));
  }

  /**
   * @notice Get agentId.
   */
  function _getAgentId(uint256 id) internal view returns (uint256 agentId) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 3, _fieldLayout);
    return (uint256(bytes32(_blob)));
  }

  /**
   * @notice Set agentId.
   */
  function setAgentId(uint256 id, uint256 agentId) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreSwitch.setStaticField(_tableId, _keyTuple, 3, abi.encodePacked((agentId)), _fieldLayout);
  }

  /**
   * @notice Set agentId.
   */
  function _setAgentId(uint256 id, uint256 agentId) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreCore.setStaticField(_tableId, _keyTuple, 3, abi.encodePacked((agentId)), _fieldLayout);
  }

  /**
   * @notice Get depotId.
   */
  function getDepotId(uint256 id) internal view returns (uint256 depotId) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 4, _fieldLayout);
    return (uint256(bytes32(_blob)));
  }

  /**
   * @notice Get depotId.
   */
  function _getDepotId(uint256 id) internal view returns (uint256 depotId) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 4, _fieldLayout);
    return (uint256(bytes32(_blob)));
  }

  /**
   * @notice Set depotId.
   */
  function setDepotId(uint256 id, uint256 depotId) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreSwitch.setStaticField(_tableId, _keyTuple, 4, abi.encodePacked((depotId)), _fieldLayout);
  }

  /**
   * @notice Set depotId.
   */
  function _setDepotId(uint256 id, uint256 depotId) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreCore.setStaticField(_tableId, _keyTuple, 4, abi.encodePacked((depotId)), _fieldLayout);
  }

  /**
   * @notice Get actionId.
   */
  function getActionId(uint256 id) internal view returns (uint256 actionId) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 5, _fieldLayout);
    return (uint256(bytes32(_blob)));
  }

  /**
   * @notice Get actionId.
   */
  function _getActionId(uint256 id) internal view returns (uint256 actionId) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 5, _fieldLayout);
    return (uint256(bytes32(_blob)));
  }

  /**
   * @notice Set actionId.
   */
  function setActionId(uint256 id, uint256 actionId) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreSwitch.setStaticField(_tableId, _keyTuple, 5, abi.encodePacked((actionId)), _fieldLayout);
  }

  /**
   * @notice Set actionId.
   */
  function _setActionId(uint256 id, uint256 actionId) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreCore.setStaticField(_tableId, _keyTuple, 5, abi.encodePacked((actionId)), _fieldLayout);
  }

  /**
   * @notice Get transactionType.
   */
  function getTransactionType(uint256 id) internal view returns (LogisticTransactionType transactionType) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 6, _fieldLayout);
    return LogisticTransactionType(uint8(bytes1(_blob)));
  }

  /**
   * @notice Get transactionType.
   */
  function _getTransactionType(uint256 id) internal view returns (LogisticTransactionType transactionType) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 6, _fieldLayout);
    return LogisticTransactionType(uint8(bytes1(_blob)));
  }

  /**
   * @notice Set transactionType.
   */
  function setTransactionType(uint256 id, LogisticTransactionType transactionType) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreSwitch.setStaticField(_tableId, _keyTuple, 6, abi.encodePacked(uint8(transactionType)), _fieldLayout);
  }

  /**
   * @notice Set transactionType.
   */
  function _setTransactionType(uint256 id, LogisticTransactionType transactionType) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreCore.setStaticField(_tableId, _keyTuple, 6, abi.encodePacked(uint8(transactionType)), _fieldLayout);
  }

  /**
   * @notice Get the full data.
   */
  function get(uint256 id) internal view returns (LogisticTransactionData memory _table) {
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
  function _get(uint256 id) internal view returns (LogisticTransactionData memory _table) {
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
    uint256 transactionItemId,
    uint256 transactionItemAmount,
    uint256 agentId,
    uint256 depotId,
    uint256 actionId,
    LogisticTransactionType transactionType
  ) internal {
    bytes memory _staticData = encodeStatic(
      timestamp,
      transactionItemId,
      transactionItemAmount,
      agentId,
      depotId,
      actionId,
      transactionType
    );

    EncodedLengths _encodedLengths;
    bytes memory _dynamicData;

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
    uint256 transactionItemId,
    uint256 transactionItemAmount,
    uint256 agentId,
    uint256 depotId,
    uint256 actionId,
    LogisticTransactionType transactionType
  ) internal {
    bytes memory _staticData = encodeStatic(
      timestamp,
      transactionItemId,
      transactionItemAmount,
      agentId,
      depotId,
      actionId,
      transactionType
    );

    EncodedLengths _encodedLengths;
    bytes memory _dynamicData;

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreCore.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData, _fieldLayout);
  }

  /**
   * @notice Set the full data using the data struct.
   */
  function set(uint256 id, LogisticTransactionData memory _table) internal {
    bytes memory _staticData = encodeStatic(
      _table.timestamp,
      _table.transactionItemId,
      _table.transactionItemAmount,
      _table.agentId,
      _table.depotId,
      _table.actionId,
      _table.transactionType
    );

    EncodedLengths _encodedLengths;
    bytes memory _dynamicData;

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreSwitch.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Set the full data using the data struct.
   */
  function _set(uint256 id, LogisticTransactionData memory _table) internal {
    bytes memory _staticData = encodeStatic(
      _table.timestamp,
      _table.transactionItemId,
      _table.transactionItemAmount,
      _table.agentId,
      _table.depotId,
      _table.actionId,
      _table.transactionType
    );

    EncodedLengths _encodedLengths;
    bytes memory _dynamicData;

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(id));

    StoreCore.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData, _fieldLayout);
  }

  /**
   * @notice Decode the tightly packed blob of static data using this table's field layout.
   */
  function decodeStatic(
    bytes memory _blob
  )
    internal
    pure
    returns (
      uint256 timestamp,
      uint256 transactionItemId,
      uint256 transactionItemAmount,
      uint256 agentId,
      uint256 depotId,
      uint256 actionId,
      LogisticTransactionType transactionType
    )
  {
    timestamp = (uint256(Bytes.getBytes32(_blob, 0)));

    transactionItemId = (uint256(Bytes.getBytes32(_blob, 32)));

    transactionItemAmount = (uint256(Bytes.getBytes32(_blob, 64)));

    agentId = (uint256(Bytes.getBytes32(_blob, 96)));

    depotId = (uint256(Bytes.getBytes32(_blob, 128)));

    actionId = (uint256(Bytes.getBytes32(_blob, 160)));

    transactionType = LogisticTransactionType(uint8(Bytes.getBytes1(_blob, 192)));
  }

  /**
   * @notice Decode the tightly packed blobs using this table's field layout.
   * @param _staticData Tightly packed static fields.
   *
   *
   */
  function decode(
    bytes memory _staticData,
    EncodedLengths,
    bytes memory
  ) internal pure returns (LogisticTransactionData memory _table) {
    (
      _table.timestamp,
      _table.transactionItemId,
      _table.transactionItemAmount,
      _table.agentId,
      _table.depotId,
      _table.actionId,
      _table.transactionType
    ) = decodeStatic(_staticData);
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
  function encodeStatic(
    uint256 timestamp,
    uint256 transactionItemId,
    uint256 transactionItemAmount,
    uint256 agentId,
    uint256 depotId,
    uint256 actionId,
    LogisticTransactionType transactionType
  ) internal pure returns (bytes memory) {
    return
      abi.encodePacked(
        timestamp,
        transactionItemId,
        transactionItemAmount,
        agentId,
        depotId,
        actionId,
        transactionType
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
    uint256 transactionItemId,
    uint256 transactionItemAmount,
    uint256 agentId,
    uint256 depotId,
    uint256 actionId,
    LogisticTransactionType transactionType
  ) internal pure returns (bytes memory, EncodedLengths, bytes memory) {
    bytes memory _staticData = encodeStatic(
      timestamp,
      transactionItemId,
      transactionItemAmount,
      agentId,
      depotId,
      actionId,
      transactionType
    );

    EncodedLengths _encodedLengths;
    bytes memory _dynamicData;

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
