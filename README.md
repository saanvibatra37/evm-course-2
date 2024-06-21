# Simple Smart Contract

A simple smart contract for an ERC20-like token on the Ethereum blockchain.

## Description

This project implements a basic token named MyToken with the symbol MTK. It includes functionality for minting new tokens, burning tokens, and tracking balances. The contract is written in Solidity and is designed to run on the Ethereum blockchain.

## Getting Started

### Installing
To use this smart contract, follow these steps:

#### 1. Open Remix IDE:


#### 2. Create a new file:

+ Click on the + icon in the File Explorer section.
+ Name the file MyToken.sol.
+ Copy and paste the contract code:
#### 3. Copy and paste the contract code:

+ Copy the code below and paste it into the MyToken.sol file.
```javascript
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
contract MyToken 
{
    // public variables here
    string public Name ;
    string public TokenAbbrv;
    uint public TotalSupply;

   constructor() 
   {
      Name = "MyToken";
      TokenAbbrv = "MTK";
      TotalSupply = 0;
   }

    // mapping variable here
    mapping (address => uint) public balance;
     
    // mint function
    function mint(address _address, uint _amount) public 
   {
      TotalSupply += _amount;
      balance[_address] += _amount;
   }

    // burn function
   function burn(address _address, uint _amount) public 
   {
      if(balance[_address] < _amount)
      {
         revert("Insufficient Balance");
      }
      else 
      {
         TotalSupply -= _amount;
         balance[_address] -= _amount;
      }
   }
}
```
## Executing program
+ To deploy and interact with the smart contract:

### 1. Compile the contract:

+ Click on the Solidity Compiler tab on the left sidebar.
 Click on the Compile MyToken.sol button.
### 2. Deploy the contract:

+ Click on the Deploy & Run Transactions tab on the left sidebar.
+ Ensure the environment is set to JavaScript VM.
+ Click on the Deploy button.
### 3. Interact with the deployed contract:

+ After deployment, the contract's functions will appear under the Deployed Contracts section.
+ You can interact with the functions mint, burn, and view public variables like Name, TokenAbbrv, TotalSupply, and balance.
  
##### For example, to mint tokens:

+ Enter an address and amount in the mint function fields.
+ Click transact to execute.
  
##### To burn tokens:

+ Enter an address and amount in the burn function fields.
+ Click transact to execute.
  
##### To check a balance:

+ Enter an address in the balance function field.
+ Click call to view the balance.
  
## Help
For common issues:

+ Ensure you are using the correct version of Solidity (pragma solidity ^0.8.18).
+ Make sure you have selected the appropriate environment in Remix (JavaScript VM for testing).
+ If you encounter issues with functions not appearing, try recompiling and redeploying the contract.
+ For more help, refer to the Remix documentation.

## Authors

Saanvi Batra - sanvibatra37
## License

This project is licensed under the MIT License.
