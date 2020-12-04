// SPDX-License-Identifier: MIT
pragma solidity >=0.7.5;


contract SimpleStorage {
  uint public storedData;

  event StoredDataChanged(uint indexed oldValue, uint indexed newValue);

  constructor (uint initialValue) {
    storedData = initialValue;
  }

  function set(uint newValue) public {
    uint oldValue = storedData;
    storedData = newValue;

    emit StoredDataChanged(oldValue, newValue);
  }

  function get() public view returns (uint retVal) {
    return storedData;
  }

}
