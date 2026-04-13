# Sample Hardhat 3 Beta Project (minimal)

This project has a minimal setup of Hardhat 3 Beta, without any plugins.

## What's included?

The project includes native support for TypeScript, Hardhat scripts, tasks, and support for Solidity compilation and tests.

---
# Stand With Crypto AZ Chapter Member Registry (Solidity)

A simple smart contract built in Solidity that stores and manages members of an organization using wallet addresses.

## Features
- Add members (address, nickname, ID)
- Deactivate members
- View member details
- Track total members
- Retrieve all member addresses

## How It Works
Each member is uniquely identified by a wallet address and stored in a mapping:

mapping(address => Member)

## Demo (Remix)
Tested using Remix Ethereum IDE:
1. Deploy contract using JavaScript VM
2. Use provided account addresses
3. Call addMember()
4. Retrieve data using getMember()
5. Deactivate members using deactivateMember()

## Tech Stack
- Solidity ^0.8.x
- Remix IDE

## Purpose
This project was built as a starting point smart contract to demonstrate:
- Structs for Stand With Crypto Members
- Mappings of the wallet addresses between members
- Basic state management on-chain

# Possible updates depending on feedback
The possible updates of this smart contract may consist of:
- A voting system based on voting for crypto policy ideas and future events for Stand With Crypto AZ Chapter
- A JavaScript test file to test this smart contract outside of Remix Ethereum IDE

# Note
Will also test the smart contract on Testnet within the next few commits.
