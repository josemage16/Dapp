// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract JGE_2 {
    // State variable to store the string
    string private storedString = "8f10646445eed0e0e486bd2a975957079a60e016aeacda53394f51dc3b88a706";

    // Function to set the string
    //function setString(string memory _newString) public {
        //storedString = _newString;
   // }

    // Function to get the stored string
    function getString() public view returns (string memory) {
        return storedString;
