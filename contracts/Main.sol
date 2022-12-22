// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TODOS {
    struct task{
        string name;
        bool isCompleted;
    }
    task[] public tasks;
    //mapping(task => address) public taskToAccount;
    mapping(address => task[]) taskToAccount;

    function setTask(string memory _str) public{
        tasks = taskToAccount[msg.sender];
       tasks.push(task(_str,false));
       taskToAccount[msg.sender] = tasks;

    }

    function getTask()view public returns(task[] memory){
        return taskToAccount[msg.sender];
    }
}