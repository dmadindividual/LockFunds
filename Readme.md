# Smart Contract Lock README

## Overview
This Ethereum smart contract, named `Lock`, provides a simple locking mechanism for funds. It allows users to lock a specified amount of Ether for a defined duration. After the lock period expires, the owner of the contract can release the locked funds.

## Features
- **Locking Funds:** Users can lock a specific amount of Ether for a set period.
- **Release Mechanism:** After the lock duration expires, the contract owner can release the locked funds.
- **Withdrawal:** The contract owner can withdraw any remaining Ether from the contract.

## Smart Contract Details

### `Lock` Contract
- `owner`: The address that deploys the contract becomes the owner.
- `LockedFunds`: Mapping of user addresses to the amount of funds they have locked.
- `LockedTimeStamps`: Mapping of user addresses to the timestamp when they locked their funds.
- `lockDuration`: The duration for which funds are locked (default is 2 days).

### Functions
1. **`constructor`:**
   - Sets the contract owner as the address that deployed the contract.

2. **`Lockfund(uint value)`:**
   - Allows users to lock a specified amount of Ether.
   - Checks if the user has sent enough Ether.
   - Records the locked amount and timestamp.

3. **`release()`:**
   - Allows the owner to release locked funds after the lock duration has expired.
   - Transfers the locked funds to the contract owner.
   - Clears the user's lock timestamp and locked funds.

4. **`withdraw()`:**
   - Allows the contract owner to withdraw any remaining Ether from the contract.

## How to Use
1. **Deploy the Contract:**
   - Deploy the smart contract on the Ethereum blockchain.

2. **Lock Funds:**
   - Call the `Lockfund` function with the desired value to lock funds.

3. **Release Locked Funds:**
   - Wait until the lock duration has expired.
   - Call the `release` function to release the locked funds.

4. **Withdraw Remaining Ether:**
   - If needed, the contract owner can call the `withdraw` function to withdraw any remaining Ether.

## Contributing
Contributions are welcome! If you find issues or want to enhance the contract, please follow the guidelines in [CONTRIBUTING.md](./CONTRIBUTING.md).

## License
This project is licensed under [SEE LICENSE IN LICENSE](./LICENSE). Please refer to the [LICENSE](./LICENSE) file for more details.

## Disclaimer
This smart contract is provided as-is and is not audited. Use it at your own risk.

## Contact
For any inquiries or issues, please contact the contract owner.

---

**Note:** This README assumes that you have basic knowledge of Ethereum smart contracts and their deployment on the Ethereum blockchain.