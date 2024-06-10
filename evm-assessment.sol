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
    mapping (address => uint)public balance;
     
    // mint function
    function mint(address _address  , uint _amount) public 
   {
      TotalSupply+=_amount;
      balance[_address]+=_amount;

   }
    // burn function
   function burn(address _address  , uint _amount) public 
   {
      if(balance[_address]<_amount)
      {
         revert("Insufficent Balance");
      }
      else 
      {
         TotalSupply-=_amount;
         balance[_address]-=_amount;
      }
   }
}
