MyToken Contract

Functionality

This Solidity smart contract implements a basic token called MyToken (MTK). It allows the following operations:

Minting: Create new tokens and assign them to a specified address.
Burning: Destroy existing tokens from a specified address.
Usage

Minting:

Call the mint function with the recipient address and the amount of tokens to create.
Example: mint(address _address, uint _amount)
Burning:

Call the burn function with the address from which tokens should be burned and the amount of tokens to destroy.
Example: burn(address _address, uint _amount)
