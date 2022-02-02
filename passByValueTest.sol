pragma solidity ^0.8.0;
contract ValueTypes{

  //pass by value
  uint256 public x = 10;
  
  function realTest() external view{
    //passing uint to the function
    _changeSth(x);
  }
  
  // x is cloned into n
  function _changeSth(uint n) internal pure returns(uint){
    n *= 2;
    return n;
  }
}
