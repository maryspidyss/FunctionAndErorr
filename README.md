# ErrorExample Smart Contract

This Solidity contract demonstrates the usage of require(), assert(), and revert() for error handling in smart contracts. It features basic operations to manage a counter, with functionality to increment, decrement, and reset the counter. The contract includes checks for valid inputs and authorization, making use of common Solidity error-handling mechanisms.

## Features

- *Increment Counter*: Increases the count by a specified value.
- *Decrement Counter*: Decreases the count, but only if the caller is the owner.
- *Reset Counter*: Resets the count to zero, but only the owner can execute this.

## Smart Contract Functions


### increment(uint256 value)
- *Description*: Increments the count by the given value.
- *Error Handling*:
  - Uses require() to check that the value is greater than zero.
  - Uses assert() to confirm that the count remains valid after the increment.

### decrement(uint256 value)
- *Description*: Decrements the count by the given value.
- *Error Handling*:
  - Uses revert() to prevent non-owners from performing this action.
  - Uses require() to ensure the decrement does not cause an underflow.

### reset()
- *Description*: Resets the count to zero.
- *Error Handling*:
  - Uses require() to restrict this function to the owner only.

## Error Handling Mechanisms

- *require()*: Used to validate inputs and ensure preconditions are met.
- *assert()*: Used to check for invariants, ensuring the contract's internal state is correct.
- *revert()*: Used for more complex error conditions, like unauthorized access.

## Prerequisites

- Solidity compiler version ^0.8.0
- Ethereum development tools (Remix, Truffle, or Hardhat)

## Deployment Instructions

1. *Compile*: Use Remix IDE or your chosen tool to compile the contract.
2. *Deploy*: Deploy the compiled contract to a local test network or any Ethereum-compatible network (such as Rinkeby, Goerli).
3. *Interaction*: Call the contract functions to increment, decrement, and reset the counter. Ensure to interact with the functions only as the owner (for restricted actions).

## License

This project is licensed under the MIT License.