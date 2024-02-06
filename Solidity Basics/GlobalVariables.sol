// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract GlobalVariables{
    function globalVars() external view returns (address, uint, uint, uint, uint, uint) {
        address sender = msg.sender;
        uint timestamp = block.timestamp;
        uint blockNum = block.number;
        uint gasAvailable = gasleft();
        uint limit = block.gaslimit;
        uint price = tx.gasprice;
        return (sender, timestamp, blockNum, gasAvailable, limit, price);
    } 
}
// sender = sender of the message
// timestamp = current block timestamp as seconds
// blockNum = current block number
// gasAvailable = remaining gas
// limit = current block gaslimit
// price = gas price of the transaction