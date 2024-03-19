// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract SelfDestruct {
    event Deposit (uint amount); 
    event Withdraw(uint amount);
    address public owner = msg.sender;

    receive() external payable { 
        emit Deposit (msg.value);
    }

    function withdraw() external {
    require(msg.sender == owner, "Not owner!"); 
    emit Withdraw(address (this).balance);
    selfdestruct(payable(msg.sender));
    }
}

//BAYTAN SHEM ARDELEE PIOLEEN M.
//WD-401
//this is a simple withdrawal of ther that is restricted to the owner