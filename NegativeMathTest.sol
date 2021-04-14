pragma solidity ^0.6.12;

contract NegativeNumberTest {
    event Show(uint256 num);
    event Check(bool b);
    function showNegative(uint256 n) public {
        require(n <= uint112(- 1));
        emit Show(uint8(-1));
        emit Show(uint8(- 1));
        emit Check(uint8(-1) == uint8(-               1));
    }
}


