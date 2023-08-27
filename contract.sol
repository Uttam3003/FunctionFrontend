// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LoyaltyPointsContract {
    mapping(address => uint256) private userPoints;
    mapping(address => bool) private userExists;
    uint256 private secretKey;

    constructor(uint256 _key) {
        secretKey = _key;
    }

    function createUserAccount() public returns (bool) {
        require(!userExists[msg.sender], "User already exists");
        userExists[msg.sender] = true;
        return true;
    }

    function getPoints() public view returns (uint256) {
        return userPoints[msg.sender] ^ secretKey;
    }

    function earnPoints(uint256 points) public {
        require(userExists[msg.sender], "User does not exist");
        userPoints[msg.sender] += points ^ secretKey;
    }

    function spendPoints(uint256 points) public {
        require(userExists[msg.sender], "User does not exist");
        require(points <= userPoints[msg.sender] ^ secretKey, "Insufficient points");
        userPoints[msg.sender] -= points ^ secretKey;
    }
}
