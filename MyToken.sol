// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract MyToken {
    address owner;

    mapping (address => uint256) public balances;

    constructor() {
        owner = msg.sender;

        balances[owner] = 1000;
    }

    function transfer(uint amount, address recipient) public {
        require(balances[msg.sender] >= amount);

        balances[msg.sender] -= amount;
        balances[recipient] += amount;
    }

    function getBalance() public view returns(uint256) {
        return balances[msg.sender];
    }
}
