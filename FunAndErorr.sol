// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Calculator {
    uint256 public value;

    function setValue(uint256 newValue) public {
        require(newValue > 0, "Value must be greater than 0");
        value = newValue;
    }

    function checkValue() public view {
        assert(value < 100);
    }

    function resetValue() public {
        if (value == 0) {
            revert("Value is already 0");
        }
        value = 0;
    }

    function increment() public {
        require(value < 10, "Value must be less than 10 to increment");
        value += 1;
    }

    function doubleValue() public {
        uint256 newValue = value * 2;
        if (newValue > 200) {
            revert("Doubling the value would exceed the limit of 200");
        }
        value = newValue;
    }

    function halveValue() public {
        require(value > 1, "Value must be greater than 1 to halve");
        value /= 2;
    }
}
