// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract SendEther { 
    constructor() payable {}

    receive() external payable { }

    function sendViaTransfer (address payable _to) external payable {
        _to.transfer (100);
    }

    function sendViaSend (address payable _to) external payable {
        bool sent = _to.send(100);
        require(sent, "Sending failed.");
    }

    function sendViaCall (address payable _to) external payable {
        (bool success, ) = _to.call{value: 100}("");
        require(success, "Call failed.");
    }
    }
    
    contract ReceiveEther {
        event Log (uint amount, uint gas);
        
        receive() external payable {
        emit Log (msg.value, gasleft());
        }
    }

//BAYTAN SHEM ARDELEE PIOLEEN M.
//WD-401

//THIS PROVIDES 3 DIFFERENT METHODS OF TRANSFER AND THEN THE RECIEVEETHER CONTRACT RECIEVES THE ETHER FROM THE SENDCONTRACT