// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.0;

contract Lock {
    address public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    mapping(address => uint256) public LockedFunds;
    mapping(address => uint256) public LockedTimeStamps;
    uint256 public lockDuration = 2 days;

    function Lockfund(uint value) public payable{
        require(msg.value >= value, "insufficient funds");
        LockedFunds[msg.sender] += value;
        LockedTimeStamps[msg.sender] = block.timestamp;

    }

    function release()public{
        require(block.timestamp >= LockedTimeStamps[msg.sender] + lockDuration, "lock is not expired");
        payable(owner).transfer(LockedFunds[msg.sender]);
        delete LockedTimeStamps[msg.sender];
        delete LockedFunds[msg.sender];
    }

    function withdraw()public{
        require(msg.sender == owner, "you are not the owner");
        payable(msg.sender).transfer(address(this).balance);
        require(address(this).balance > 0, "something went wrong");
    }
}
