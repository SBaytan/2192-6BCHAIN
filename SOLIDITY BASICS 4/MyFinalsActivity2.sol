// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyFinalActivity2 {
    address payable public owner;
    uint256 public  creationTime;
    uint256 constant INITIAL_ETH_AMOUNT = 2 ether;
    uint256 public remainingEth;

    event EtherRecieved(address indexed from, uint256 amount);
    event EtherSent(address indexed to, uint256 amount);

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    constructor() {
        owner = payable(msg.sender);
        creationTime = block.timestamp;
        remainingEth = INITIAL_ETH_AMOUNT;
    }

    receive() external payable {
        emit EtherRecieved(msg.sender, msg.value);
        remainingEth == msg.value;
    }

    function sendEther(address payable recipient, uint256 amount) public onlyOwner {
        require(amount <= address(this).balance, "Insufficient balance in the contract.");
        remainingEth -= amount;
        recipient.transfer(amount);
        emit EtherSent(recipient, amount);
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
    
    function getInitialEthAmount() public pure returns (uint256) {
        return  INITIAL_ETH_AMOUNT;
    }

    function destroy() public onlyOwner {
        require(address(this).balance > 0, "No balance to transfer");
        owner.transfer(address(this).balance);
        remainingEth = 0;
    }
}

//BAYTAN SHEM ARDELEE PIOLEEN M.
//WD-401

//This smart contract represents an EtherWallet where the owner can deposit and withdraw ether. Functions include depositing ether, checking balance and withdrawal of funds.