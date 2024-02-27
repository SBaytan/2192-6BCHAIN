// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract MQuizContract {
    address public owner;
    uint256 public age;
    uint256 public hoursWorked;
    uint256 public hourlyRate;
    uint256 public totalSalary;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only contract owner can call this function");
        _;
    }

    modifier employeeRate(uint256 rate) {
    require(rate > 0, "Set Hourly rate to greater than 0");
        _;
    }

    modifier employeeHoursWorked(uint256 employeehours) {
        require(employeehours > 0, "Set number of hours worked to greater than 0");
        _;
    }

    constructor() {
    owner = msg.sender;
    }

    function setAge(uint256 employeeage) public  {
    age = employeeage;
    }

    function setHrsWorked(uint256 employeeHours) public employeeHoursWorked(employeeHours) {
    hoursWorked = employeeHours;
    }

    function setRate(uint256 rate) public onlyOwner employeeRate(rate) {
    hourlyRate = rate;
    }

    function calculateTotalSalary() public onlyOwner {
    require(hourlyRate > 0 && hoursWorked > 0, "Hourly rate or hours worked is zero");
    totalSalary = hourlyRate * hoursWorked;
    }
}

//SIR CHECKED