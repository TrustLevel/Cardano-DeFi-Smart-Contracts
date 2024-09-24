### -> This repository is under contrunction! ###

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

- **/contracts**: This directory contains the Aiken contract files for each of the six smart contracts.
  - `CollateralManagement.aiken`
  - `IssuanceRedemption.aiken`
  - `PriceOracle.aiken`
  - `OwnershipCustody.aiken`
  - `Liquidation.aiken`
  - `AuditingReporting.aiken`


---

## Usage

Will be explained, once the repository is finished!


## Contributing

We welcome contributions from the community! If you’d like to contribute:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Submit a pull request with detailed descriptions of your changes.


## Acknowledgements

This project will be developed as part of a **Project Catalyst** proposal on the **Cardano blockchain**. We thank the community for their feedback and support in guiding the development of this library.

---
