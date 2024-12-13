// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    struct Poll {
        string title;
        string[] options;
        mapping(string => uint256) votes;
        bool isActive;
    }

    mapping(uint256 => Poll) public polls;
    uint256 public pollCount;

    function createPoll(string memory _title, string[] memory _options) public {
        Poll storage newPoll = polls[pollCount++];
        newPoll.title = _title;
        newPoll.options = _options;
        newPoll.isActive = true;
    }

    function vote(uint256 _pollId, string memory _option) public {
        require(polls[_pollId].isActive, "Poll is not active");
        polls[_pollId].votes[_option]++;
    }

    function getResults(uint256 _pollId) public view returns (string[] memory, uint256[] memory) {
        uint256 optionCount = polls[_pollId].options.length;
        uint256[] memory results = new uint256[](optionCount);
        
        for (uint256 i = 0; i < optionCount; i++) {
            results[i] = polls[_pollId].votes[polls[_pollId].options[i]];
        }
        
        return (polls[_pollId].options, results);
    }
}
