#!/usr/bin/env bash

# Install solc on Mac with Homebrew:
# > brew tap ethereum/ethereum
# > brew install solidity

# Or with NPM:
# > npm install -g solc

solc ./src/main/resources/SimpleStorage.sol --bin --abi --optimize -o ./target
