### -> This repository is under contrunction! ###

## Acknowledgements

This project will be developed as part of a **Project Catalyst** proposal on the **Cardano blockchain**. We thank the community for their feedback and support in guiding the development of this library.

Link to the proposal: https://projectcatalyst.io/funds/12/f12-cardano-open-developers/open-source-library-for-defi-smart-contracts-in-aiken

## Milestone Reportings

- Milestone 1: https://docs.google.com/document/d/1xNq3jymLZaATMJIadrc8Ixy-muyNILGB_9IB020R_FU/edit?usp=sharing
- Milestone 2: :::In progress:::
- Milestone 3: not started
- Milestone 4: not started
- Milestone 5: not started

---

### Overview

This repository will contain six smart contracts and will cover core DeFi functionalities such as collateral management, token issuance, price oracles, ownership and custody, liquidations, and real-time auditing and reporting.

Each contract is designed to work independently or in conjunction with the others, allowing developers to build DeFi protocols with ease.


### Core Contracts in the Library

1. **Collateral Management Contract**
   - **Purpose**: Manages the collateral that users deposit into the system. This contract ensures that collateral is securely stored, updated, and properly tracked.
   - **Key Functions**:
     - Deposit and withdraw collateral
     - Update collateral value based on price oracle data
     - Trigger liquidation if collateral falls below a certain threshold
   - **Interactions**: Interacts with the **Price Oracle**, **Liquidation**, and **Issuance and Redemption Contracts**.

2. **Issuance and Redemption Contract**
   - **Purpose**: Facilitates the minting of tokens when collateral is deposited and burns tokens when collateral is redeemed.
   - **Key Functions**:
     - Mint and burn tokens
     - Redeem collateral
   - **Interactions**: Works with the **Collateral Management Contract** to ensure that tokens are minted and burned in proportion to the collateral backing them.

3. **Price Oracle Contract**
   - **Purpose**: Fetches and updates the price of assets being used within the DeFi protocol. This data is essential for ensuring accurate collateral values and liquidation thresholds.
   - **Key Functions**:
     - Fetch real-time price data for assets
     - Update asset prices
   - **Interactions**: Provides price data to the **Collateral Management**, **Issuance and Redemption**, and **Liquidation Contracts**.

4. **Ownership and Custody Contract**
   - **Purpose**: Tracks the ownership of tokenized assets, ensuring that users maintain legal claims to their assets and that ownership transfers are properly recorded.
   - **Key Functions**:
     - Transfer ownership of assets
     - Check ownership status
     - Register custodians for off-chain assets
   - **Interactions**: Works with the **Collateral Management** and **Issuance and Redemption Contracts** to verify asset ownership.

5. **Liquidation Contract**
   - **Purpose**: Manages liquidation events when a user's collateral falls below the required threshold. This contract ensures system stability by selling or auctioning off collateral when necessary.
   - **Key Functions**:
     - Set liquidation thresholds
     - Check collateral value and trigger liquidation
     - Execute liquidation events
   - **Interactions**: Relies on the **Price Oracle** and **Collateral Management Contracts** to determine when liquidation is necessary.

6. **Auditing and Reporting Contract**
   - **Purpose**: Provides transparency by tracking key events like token issuances, collateral changes, and liquidation events. It allows for real-time auditing and proof-of-reserves mechanisms.
   - **Key Functions**:
     - Log significant events such as token issuance and liquidations
     - Generate reports on the system’s status
     - Track collateral values and token supply
   - **Interactions**: Integrates with all the other contracts to provide a comprehensive audit log and reporting system.

---

## **Structure of the Repository**

- **/templates**: This directory contains the templates (including logic and definitions) for each smart contract.

- **/contracts**: This directory will contains the Aiken contract files for each of the six smart contracts.


---

## Usage

Will be explained, once the repository will be finished and ready to use.


## Contributing

We welcome contributions from the community! If you’d like to contribute:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Submit a pull request with detailed descriptions of your changes.

---
