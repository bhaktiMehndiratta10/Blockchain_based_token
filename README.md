# 3.1_METACRAFTERS

This Solidity smart contract implements a simple token with error handling fetaures using require() , assert() and revert() statement. It allows users to transfer tokens from their account to another account.

CONTRACT DETAILS-
1) Variables-
totalSupply: An unsigned integer that represents the total supply of tokens in the contract.
balanceOf: A mapping that associates addresses with their token balances.

2) Constructor-
The contract constructor accepts an initial supply of tokens and assigns them to the contract deployer's address.


FUNCTIONS-
1) transfer-
function transfer(address recipient, uint256 amount) public

This function allows the sender to transfer a specified amount of tokens to a recipient. It checks for the validity of the transfer by ensuring that the recipient is not the zero address, the amount is greater than zero, and the sender has enough funds. If the conditions are met, the transfer is executed.

2) assertFunction-
function assertFunction() public view

This function demonstrates the use of the assert statement. It checks whether the total supply of tokens is greater than zero. If not, it triggers an assertion failure and reverts the transaction.

3) revertFunction-
function revertFunction() public pure

This function showcases the use of the revert statement. It always reverts the transaction with a custom error message.


ERROR HANDLING MECHANISM-
1) require: Used in the transfer function to check conditions before executing the transfer.
2) assert: Used in the assertFunction to validate a condition and trigger an assertion failure if not met.
3) revert: Used in the revertFunction to cause a revert with a custom error message.
