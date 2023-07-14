/*
Write a smart contract to create your own token on a local HardHat network. Once you have your contract, you should be able to use remix to interact with it. From remix, 
the contract owner should be able to mint tokens to a provided address. Any user should be able to burn and transfer tokens.
*/


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
// import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
// import "@openzeppelin/contracts/access/Ownable.sol";


contract MyToken {
    string public name;
    string public symbol;
    uint256 public totalSupply;
    mapping(address => uint256) public balances;

    address public owner;

    

    modifier onlyOwner() {
        require(msg.sender == owner, "Only contract owner can call this function");
        _;
    }

    constructor() {
        name = "RainCoin";
        symbol = "RTK";
        owner = msg.sender;
        // mint(msg.sender, 10000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) external onlyOwner {
        require(to != address(0), "Invalid address");
        totalSupply += amount;
        balances[to] += amount;
        
    }

    function burn(uint256 amount) external {
        require(amount > 0, "Invalid amount");
        require(balances[msg.sender] >= amount, "Insufficient balance");
        totalSupply -= amount;
        balances[msg.sender] -= amount;
        
    }

    function transferFrom(address from, address to, uint256 amount) external {
        require(to != address(0), "Invalid address");
        require(amount > 0, "Invalid amount");
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[from] -= amount;
        balances[to] += amount;
        // _transfer(from, to, amount);
        // _approve(from, _msgSender(), allowance(from, _msgSender()) - amount);
        // return true;
    }

    function transfer(address to, uint256 amount) external {
        require(to != address(0), "Invalid address");
        require(amount > 0, "Invalid amount");
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        balances[to] += amount;
        
    }
}
