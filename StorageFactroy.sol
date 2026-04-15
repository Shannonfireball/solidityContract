// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import { SimpleStorage } from "./SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract() public {
        listOfSimpleStorageContracts.push(new SimpleStorage());
    }

    function sfStore( uint256 _contractIndex, int256 _newSimpleStorageNumber) public {
        SimpleStorage foundContract = listOfSimpleStorageContracts[_contractIndex];
        foundContract.store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _contractIndex) public view returns(int256) {
        SimpleStorage foundContract = listOfSimpleStorageContracts[_contractIndex];
        return foundContract.retrive();
    }
}