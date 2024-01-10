// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract JGEs {
    string public storedText;

    function saveText(string memory newText) public {
        storedText = newText;
    }
}
