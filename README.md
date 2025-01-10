# Bank Account Management System

## :bank: Overview
This **Dart** program simulates basic **bank account management** functionalities, including deposit, withdrawal, and account balance display operations. It demonstrates real-world banking tasks while ensuring basic validations for transactions, such as ensuring positive amounts and checking sufficient funds.

## :sparkles: Features

- **Deposit**: Deposit money into the account with validation for positive amounts.
- **Withdrawal**: Withdraw money from the account with checks for sufficient balance and positive withdrawal amounts.
- **Account Info**: Display the current balance and account ID.

## :scroll: Code Walkthrough

### :pencil2: Main Function

The `main()` function simulates a series of banking operations:

1. **Account Creation**:  
   The account is created using the named constructor `BankAccount('Osama1007')`, initializing the account ID to `Osama1007` and the balance to `0.0`.

2. **Deposit Scenarios**:  
   - A valid deposit of **500** is made to the account.
   - An **invalid deposit** with a negative value (**-100**) is attempted and rejected.

3. **Withdrawal Scenarios**:  
   - A valid withdrawal of **200** is made, reducing the balance.
   - An **insufficient balance** withdrawal of **400** is attempted and rejected.
   - Another **invalid withdrawal** of **-50** is attempted and rejected.

4. **Final Account Info**:  
   After all the operations, the program displays the account details, including the final balance.

### :books: BankAccount Class

The `BankAccount` class models a bank account with the following features:

- **Constructor**:  
   `BankAccount(this._accountID)` initializes the account with a specified ID and a starting balance of `0.0`.

- **Deposit Method**:  
   The `deposit(double amount)` method ensures that only **positive amounts** can be deposited. It adds the deposit amount to the balance and provides feedback.

- **Withdraw Method**:  
   The `withdraw(double amount)` method ensures the amount is positive and checks if there are sufficient funds in the account before processing the withdrawal.

- **Display Account Info**:  
   The `displayAccountInfo()` method displays the current **account ID** and **balance**.

## :rocket: How to Run

To run this program on your local machine, follow these steps:

1. **Install Dart**:  
   If you don’t have Dart installed, download and install it from the [official Dart website](https://dart.dev/get-dart).

2. **Save the Code**:  
   Copy the Dart code into a file with the `.dart` extension, for example, `bank_account.dart`.

3. **Run the Code**:  
   Open your terminal and navigate to the directory where the Dart file is located. Then run the following command:

   ```bash
   dart run bank_account.dart
