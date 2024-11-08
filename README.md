# Calculator Smart Contract

The `Calculator` smart contract is a simple contract that enables basic operations on a stored `value`. Users can set, reset, increment, double, or halve the value, with checks to ensure it stays within specified boundaries.

## Overview

- **Contract Name**: `Calculator`
- **Compiler Version**: `^0.8.20`
- **License**: MIT

## Functions

### `setValue(uint256 newValue)`

Sets the `value` to a specified `newValue`.

- **Parameters**:
  - `newValue`: A positive integer greater than 0.
- **Requirements**:
  - `newValue` must be greater than 0.
- **Reverts**:
  - If `newValue` is 0 or lower.

### `checkValue()`

Verifies that `value` is less than 100.

- **Assertions**:
  - Throws an error if `value` is 100 or more, ensuring it remains under a certain limit.

### `resetValue()`

Resets the `value` to 0.

- **Reverts**:
  - If `value` is already 0, preventing redundant resets.

### `increment()`

Increases `value` by 1.

- **Requirements**:
  - The current `value` must be less than 10.
- **Reverts**:
  - If `value` is 10 or greater, ensuring it doesn’t exceed the increment limit.

### `doubleValue()`

Doubles the current `value`.

- **Reverts**:
  - If doubling `value` would exceed 200, preventing overflow.

### `halveValue()`

Divides `value` by 2.

- **Requirements**:
  - `value` must be greater than 1.
- **Reverts**:
  - If `value` is 1 or lower, to prevent reaching zero or undefined values.

## Usage

1. **Set a Value**:
   - Call `setValue(newValue)` to assign a new value, where `newValue` is a positive integer.
2. **Check Value Limit**:
   - Call `checkValue()` to ensure `value` is under 100.
3. **Increment**:
   - Call `increment()` to add 1 to `value` (only if `value` is under 10).
4. **Double the Value**:
   - Call `doubleValue()` to multiply `value` by 2 (only if the new value will not exceed 200).
5. **Halve the Value**:
   - Call `halveValue()` to divide `value` by 2 (only if `value` is above 1).
6. **Reset Value**:
   - Call `resetValue()` to set `value` back to 0.

## Error Handling

The contract uses Solidity’s `require`, `assert`, and `revert` statements for error handling:
- **`require`**: Used to validate conditions for state changes.
- **`assert`**: Ensures `value` remains within safe limits.
- **`revert`**: Used to stop execution if conditions aren't met, as seen in `resetValue` and `doubleValue`.

## License

This project is licensed under the MIT License.
