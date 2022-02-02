pragma solidity ^0.8.0;

contract ReferenceTypes{

  //pass by ref
  uint256[] public x = [1,2,3,4];
  
  function realTest() external{
    //passing uint[] to the function
    _changeSth(x);
  }
  
  // x is cloned into n
  function _changeSth(uint[] storage n) internal returns(uint[] memory){
    n[0] *= 100;
    return n;
  }
}
