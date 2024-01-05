// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TimeStorage {
    uint256 public currentTime;

    event TimeStored(uint256 indexed time);

    function storeCurrentTime() public {
        currentTime = block.timestamp;
        emit TimeStored(currentTime);
    }

    function getCurrentTime() public view returns (uint256) {
        return currentTime;
    }
}
