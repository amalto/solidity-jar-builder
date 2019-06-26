pragma solidity ^0.5.1;


contract SimpleStorage {
  uint public storedData;

  event StoredDataChanged(uint indexed oldValue, uint indexed newValue);

  constructor(uint initialValue) public {
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
