// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import { OwnableStorage } from '../../access/OwnableStorage.sol';
import { UpgradeableProxyOwnable } from './UpgradeableProxyOwnable.sol';

contract UpgradeableProxyOwnableMock is UpgradeableProxyOwnable {
    constructor(address implementation, address owner) {
        _setImplementation(implementation);
        OwnableStorage.layout().owner = owner;
    }

    /**
     * @dev suppress compiler warning
     */
    receive() external payable {}
}
