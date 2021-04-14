pragma solidity ^0.5.10;

contract A {
    function foo() public view returns(address payable) {return msg.sender;}
}

contract B is A {
    address payable public msgSender;
    event Parent(address sender);
    event This(address sender);
    event Super(address sender);

    function bar() public {
        // 3 ways of doing the same thing
        msgSender = A.foo();  
        emit Parent(msgSender);
        msgSender = this.foo();  
        emit This(msgSender);
        msgSender = super.foo();  
        emit Super(msgSender);
    }
}
