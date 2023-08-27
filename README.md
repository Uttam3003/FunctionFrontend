# Loyalty Points Smart Contract

The Loyalty Points Smart Contract is a Solidity contract that enables users to manage loyalty points. It allows users to earn and spend loyalty points, while keeping their point balances secured through a secret key.

## Table of Contents

1. Overview

2. Contract Functions

  a. Constructor
   
  b. createUserAccount
   
  c. getPoints
   
  d. earnPoints
   
  e. spendPoints

3. License
   
## Overview

The Loyalty Points Smart Contract is designed to facilitate the management of loyalty points for users. Each user is identified by their Ethereum address. The contract allows users to earn points, spend points, and view their current point balance. Point balances are encrypted using a secret key to enhance security.

## Contract Functions

### Constructor

The constructor of the contract initializes the secret key. The secret key is required for encrypting and decrypting point balances.

solidity

constructor(uint256 _key)
Parameters:
_key (uint256): The secret key used for encrypting and decrypting point balances.

### CreateUserAccount

This function allows users to create an account and become eligible for earning and spending loyalty points.

solidity

function createUserAccount() public returns (bool)
Returns: (bool) Returns true if the account creation is successful.

### GetPoints

This function enables users to view their current loyalty point balance.

solidity

function getPoints() public view returns (uint256)
Returns: (uint256) The decrypted point balance of the calling user.

### EarnPoints

Users can earn additional loyalty points using this function.

solidity

function earnPoints(uint256 points) public
Parameters:
points (uint256): The number of points to be earned.

### SpendPoints

Users can spend their loyalty points using this function, provided they have sufficient points.

solidity

function spendPoints(uint256 points) public
Parameters:
points (uint256): The number of points to be spent.

## Author 
UTTAM KUMAR

## LICENCE
This project is under MIT licence.
