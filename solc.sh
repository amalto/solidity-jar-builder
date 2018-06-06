#!/usr/bin/env bash

# Installing solc
#brew tap ethereum/ethereum
#brew install solidity
#which solc

solc ./src/main/resources/Ondiflo.sol --bin --abi --optimize -o ./target


