# Shopping Mall Billing Smart Contract

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## Overview

This smart contract, written in Solidity, implements a decentralized billing system for a shopping mall named "TechPlaza." It leverages blockchain technology to enhance transparency, reduce fraud, and provide a tamper-proof record of transactions.

## Features

- **Secure and Transparent Billing:**
  - Utilizes blockchain's distributed ledger for transparent and secure recording of transactions.
  - Enhances trust between the shopping mall and its customers.

- **Fraud Reduction:**
  - Minimizes the risk of fraud by leveraging the decentralized nature of blockchain.
  - Reduces vulnerabilities associated with centralized databases.

- **Tamper-Proof Recordkeeping:**
  - Ensures an immutable record of all billing activities, facilitating auditing and dispute resolution.

- **Real-Time Transaction Visibility:**
  - Introduces instant settlement and real-time updates for customers and management.
  - Provides timely insights into revenue streams for more informed decision-making.

- **Customer Empowerment:**
  - Empowers customers by granting direct access to their transaction history through decentralized applications (DApps) or interfaces.

- **Efficiency and Cost Savings:**
  - Streamlines billing processes, removing intermediaries and reducing reconciliation efforts.
  - Contributes to operational efficiency and cost savings for the shopping mall.

## Smart Contract Details

- **State Variables:**
  - `mallOwner`: Address of the shopping mall owner.
  - `customerBalances`: Mapping of customer addresses to their respective balances.
  - `totalPurchases`: Total number of purchases made.

- **Functions:**
  - `makePurchase(uint256 _amount)`: Allows customers to make a purchase.
  - `addFunds(address _customer, uint256 _amount)`: Adds funds to a customer's balance (only mall owner).
  - `checkBalance(address _customer)`: Checks a customer's balance.
  - `receiveFunds() payable`: Allows the mall owner to receive Ether.

- **Events:**
  - `PurchaseMade(address indexed customer, uint256 amount)`: Logs customer purchases.

## Usage

1. **Deploying the Smart Contract:**
   - Deploy the smart contract on a suitable Ethereum environment (e.g., Remix IDE, testnet, or mainnet).

2. **Interacting with the Smart Contract:**
   - Use functions such as `makePurchase`, `addFunds`, `checkBalance`, and `receiveFunds` as per the intended use case.

3. **Monitoring Events:**
   - Monitor the emitted `PurchaseMade` events for real-time updates on customer purchases.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
