# METACRAFTERS-ETH-AVAX-MODULE-3
# Introduction
This repository contains the Solidity smart contract code for the ERC-20 token, designed with basic functionalities such as minting, burning, and transferring the tokens.
This README file provides an overview of the ERC-20 token contract that includes instructions on how to deploy the contract to the local Hardhat test network using Remix Connect Localhost and how to interact with it using Remix in the Hardhat provider environment.

# ERC20 Standard interface functions

- function totalSupply() public view returns (uint256);
- function balanceOf(address tokenOwner) public view returns (uint);
- function allowance(address tokenOwner, address spender)
- public view returns (uint);
- function transfer(address to, uint tokens) public returns (bool);
- function approve(address spender, uint tokens)  public returns (bool);
- function transferFrom(address from, address to, uint tokens) public returns (bool);

# Implementation
1. Clone this repository 
run following commands 
```sh
npm install

npm install -g @remix-project/remixd

remixd -s ./ --remix-ide https://remix.ethereum.org

npx hardhat node
 ```
- In the REMIX workspace, select "localhost" to connect to the local Hardhat network.
- Select the file from the contracts directory "Lock.sol".
- In the deploy section of Remix, select the environment as "Dev-Hardhat Provider".
- Deploy your contract on the local Hardhat network.
- Once the contract is deployed, you will see the contract address in the Remix console.
- Copy this address and use it to interact with the functions provided in code.


## Use provided functions to interaction with the ERC20 token.

   - Use the `mint` function to create the new tokens.
   - Use the `burn` function to destroy a certain amount of tokens.
   - Use the `transferFrom` function to transfer currency from one address to another over the network.
   - Use the `transfer` function to transfer the tokens to another address.

These functions provide the basic functionality for the token contract, including minting new tokens, burning tokens, and transferring tokens between addresses. Additional functions can be added to enhance the contract's functionality, such as checking the balance of an address or approving transfers for another address.


## Author
Shivam Gupta 
[shivamgupta5203@gmail.com]
[21bcs6255@cuchd.in]

## License
This project is licensed under the MIT License. See the [`LICENSE`](LICENSE) file for more information.
