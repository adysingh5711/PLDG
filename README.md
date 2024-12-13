# Voting Smart Contract Explanation  


For Protocol Labs Dev Guild [PLDG] Cohort 2 Application

This document provides an overview of the decentralized voting smart contract implemented in Solidity. The contract is designed to facilitate a transparent and secure voting process using blockchain technology.

## Smart Contract Overview

The voting smart contract allows users to create polls, cast votes, and retrieve results. It ensures that all actions are recorded on the blockchain, providing a tamper-proof and transparent voting mechanism.

### Key Components

1. **Poll Structure**:
   - Each poll is represented by a `Poll` struct that contains:
     - `title`: The title of the poll.
     - `options`: An array of strings representing the voting options.
     - `votes`: A mapping to count votes for each option.
     - `isActive`: A boolean indicating whether the poll is currently active.

2. **State Variables**:
   - `pollCount`: A counter to keep track of the total number of polls created.
   - `polls`: A mapping that stores all created polls, indexed by their unique ID.

### Functions

1. **createPoll**:
   - **Input**: 
     - `_title`: A string for the poll title.
     - `_options`: An array of strings for the voting options.
   - **Description**: Creates a new poll and initializes its properties.

2. **vote**:
   - **Input**:
     - `_pollId`: The ID of the poll to vote on (uint256).
     - `_option`: The option being voted for (string).
   - **Description**: Allows users to cast their vote for a specified option in an active poll.

3. **getResults**:
   - **Input**:
     - `_pollId`: The ID of the poll for which results are requested (uint256).
   - **Description**: Returns the options and their corresponding vote counts for the specified poll.

### Example Usage

To interact with the contract, you can use the following inputs:

- **Creating a Poll**:
  ```javascript
  createPoll("Favorite Programming Language", ["Python", "JavaScript", "Solidity", "C++"]); //Replace the name "createPoll" with the name of your desired poll name and change the entries as per requirement

- **Voting**:
  To cast your vote for a specific option in an active poll, use the following code snippet:
  ```javascript
   0,Python // Replace "0" with position of field and "Python" with the name of the desired item in Array

  
- **Getting Results**:
  Once you have casted your vote, you can retrieve the results of a specific poll using the `getResults` function. This function returns both the voting options and their corresponding vote counts.

  ```javascript
  0 // Replace 0 with the poll ID

### Benefits of Decentralized Voting

- **Security**: Blockchain technology ensures that votes are tamper-proof and securely recorded, reducing the risk of fraud.

- **Transparency**: All voting transactions are publicly verifiable, allowing anyone to confirm that their votes have been accurately counted.

- **Accessibility**: Voters can participate from anywhere with an internet connection, making it easier for those who may have difficulty reaching polling places.

- **Efficiency**: Automated vote counting through smart contracts speeds up the process and minimizes human error.

- **Cost-Effectiveness**: Reduces the need for physical polling stations and paperwork, lowering the overall costs of elections.

This voting smart contract provides a robust solution for conducting polls in a secure and transparent manner. For further details and implementation, please visit my [GitHub repository](https://github.com/adysingh5711/pldg/blob/main/PLDG%20Sample%20Problem%20-%20Voting%20Smart%20Contract.sol).
