// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GradingSystem {
address public contractOwner;

struct Student {
    string fullName;
    uint prelimExam;
    uint midtermExam;
    uint finalExam;
    uint totalGrade;
    Status status;
}

enum Status { Passed, Failed }
    Student public currentStudent;

    event GradeComputed(string studentName, Status status);

    modifier onlyOwner() {
        require(msg.sender == contractOwner, "Unauthorized access");
        _;
    }

    modifier validGrade(uint grade) {
    require(grade >= 0 && grade <= 100, "Grade should not be higher than 200 and lower than 0");
    _;
    }

    constructor() {
        contractOwner = msg.sender;
    }

    function setFullName(string calldata _name) public onlyOwner {
        currentStudent.fullName = _name;
    }

    function setPrelimExam(uint _grade) public onlyOwner validGrade(_grade) {
        currentStudent.prelimExam = _grade;
    }

    function setMidtermExam(uint _grade) public onlyOwner validGrade(_grade) {
        currentStudent.midtermExam = _grade;
    }

    function setFinalExam(uint _grade) public onlyOwner validGrade(_grade) {
        currentStudent.finalExam = _grade;
    }

    function computeGrade() public onlyOwner {
        uint total = (currentStudent.prelimExam + currentStudent.midtermExam + currentStudent.finalExam) / 3;
        currentStudent.totalGrade = total;
        
        if (total >= 75) {
        currentStudent.status = Status.Passed;
        } else {
        currentStudent.status = Status.Failed;
        }
        emit GradeComputed(currentStudent.fullName, currentStudent.status);
    }

    function getFullName() public view returns (string memory) {
        return currentStudent.fullName;
    }

    function getFirstExamGrade() public view returns (uint) {
        return currentStudent.prelimExam;
    }

    function getSecondExamGrade() public view returns (uint) {
        return currentStudent.midtermExam;
    }

    function getFinalExamGrade() public view returns (uint) {
        return currentStudent.finalExam;
    }

    function getTotalGrade() public view returns (uint) {
        return currentStudent.totalGrade;
    }

    function getStatus() public view returns (Status) {
        return currentStudent.status;
    }
}

//Baytan Shem Ardelee Pioleen M.
//WD-401