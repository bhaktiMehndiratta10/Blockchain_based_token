// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleToken {
    uint256 public totalSupply;
    mapping(address => uint256) public balanceOf;

    constructor(uint256 initialSupply) {
        require(initialSupply > 0, "Initial supply must be greater than zero");
        totalSupply = initialSupply;
        balanceOf[msg.sender] = initialSupply; // Assign all tokens to the deployer
    }

    function transfer(address recipient, uint256 amount) public {
        require(recipient != address(0), "Invalid recipient address");
        require(amount > 0, "Transfer amount must be greater than zero");
        require(balanceOf[msg.sender] >= amount, "Insufficient balance");
        
        balanceOf[msg.sender] -= amount;
        balanceOf[recipient] += amount;
    }

    function assertFunction() public view {
        assert(totalSupply > 0);
    }

    function revertFunction() public pure {
        revert("This function always reverts the transaction");
    }
}
