// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

/* Autogenerated file. Do not edit manually. */

import { LogisticActionType } from "@store/common.sol";

/**
 * @title ILogisticActionSystem
 * @author MUD (https://mud.dev) by Lattice (https://lattice.xyz)
 * @dev This interface is automatically generated from the corresponding system contract. Do not edit manually.
 */
interface ILogisticActionSystem {
  function AWAR__createLogisticAction(
    LogisticActionType actionType,
    uint256 actionItemId,
    uint256 actionItemAmount,
    uint256 sourceId,
    uint256 destinationId,
    uint256 operationId
  ) external returns (uint256);

  function AWAR__deleteLogisticAction(uint256 actionId) external;

  function AWAR__editActionType(uint256 actionId, LogisticActionType newActionType) external;

  function AWAR__editActionSource(uint256 actionId, uint256 newSourceId) external;

  function AWAR__editActionDestination(uint256 actionId, uint256 newDestinationId) external;

  function AWAR__editActionItemId(uint256 actionId, uint256 newActionItemId) external;

  function AWAR__editActionItemAmount(uint256 actionId, uint256 newActionItemAmount) external;
}
