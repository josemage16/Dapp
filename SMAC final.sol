// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SMAC {
    uint256 public var1;
    uint256 public var2;
    uint256 public var3;
    uint256 public var4;
    uint256 public var5;
    uint256 public var6;
    string public paymentStatus;
    uint256 public time;
    bytes32 public hash;
    uint256 public result; // Store result in cents
    uint256 public gasConsumed;

   
    function setVariables(uint256 _var1, uint256 _var2, uint256 _var3, uint256 _var4, uint256 _var5, uint256 _var6) public {
        uint256 gasStart = gasleft(); // Get gas remaining before function execution

        var1 = _var1;
        var2 = _var2;
        var3 = _var3;
        var4 = _var4;
        var5 = _var5;
        var6 = _var6;
        if (_var5 > _var4) {
            paymentStatus = "PAY";
        } else {
            paymentStatus = "NO PAY";
        }
        time = block.timestamp;
        hash = keccak256(abi.encodePacked(_var1, _var2, _var3, _var4, _var5, _var6, paymentStatus, time));
        
        // Compute result
        result = _var4 + (_var4 * _var6) / 100; // Calculate result by incrementing _var4 by _var6 percentage

        gasConsumed = gasStart - gasleft(); // Calculate gas consumed during function execution
    }

    function getVariables() public view returns (uint256, uint256, uint256, uint256, uint256, uint256, string memory, uint256, bytes32, uint256, uint256) {
        return (var1, var2, var3, var4, var5, var6, paymentStatus, time, hash, result, gasConsumed);
    }
}
