// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorExample {
    uint256 public count;
    address public owner;

    constructor() {
        owner = msg.sender; // Set the deployer as the owner
    }

    // Increment the counter
    function increment(uint256 value) public {
        require(value > 0, "Value must be positive"); // Ensure input is valid
        count += value;

        // Assert that the count remains non-negative (safe-guard logic)
        assert(count >= value);
    }

    // Decrement the counter (only by the owner)
    function decrement(uint256 value) public {
        if (msg.sender != owner) {
            revert("Only the owner can decrement");
        }

        require(value <= count, "Cannot decrement below zero"); // Ensure no underflow
        count -= value;
    }

    // Reset the counter
    function reset() public {
        require(msg.sender == owner, "Only the owner can reset");
        count = 0;
    }
}