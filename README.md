# Bank Account Management System

This is a simple program that simulates basic bank account functionalities such as deposit, withdrawal, and account balance display. It is implemented in Dart and demonstrates how to manage a bank account with validations for deposit and withdrawal operations.

## Features

- **Deposit**: Allows the user to deposit money into the account with validation for positive amounts.
- **Withdrawal**: Allows the user to withdraw money from the account with validations for positive amounts and sufficient balance.
- **Display Account Info**: Displays the current account balance and account ID.

## Code Walkthrough

### `main()` Function

The `main` function demonstrates how the `BankAccount` class works:

1. **Account Creation**: An account is created using the named constructor `BankAccount('Osama1007')`, initializing the account with a specific ID (`Osama1007`).
2. **Display Initial Info**: The account details (Account ID and Balance) are displayed.
3. **Deposit Operations**: A deposit of 500 is made, followed by an invalid deposit of -100.
4. **Withdrawal Operations**: A valid withdrawal of 200 is made, followed by an insufficient balance withdrawal and an invalid withdrawal of -50.
5. **Display Final Info**: Finally, the updated account details are shown.

### `BankAccount` Class

This class encapsulates the details of a bank account. It contains the following methods:

- **Constructor**: `BankAccount(this._accountID)` initializes the account with an account ID and sets the balance to 0 by default.
  
- **`deposit(double amount)`**: This method handles deposit operations. It ensures that the deposit amount is positive and updates the account balance.

- **`withdraw(double amount)`**: This method handles withdrawal operations. It ensures that the withdrawal amount is positive and that the account has sufficient balance.

- **`displayAccountInfo()`**: This method displays the account ID and the current balance.

## Code Example

```dart
void main() {
  // Creating an account using the named constructor
  var a1 = BankAccount('Osama1007');

  // Display initial account info
  a1.displayAccountInfo();

  // Deposit scenarios
  print('\n-- Deposit Scenarios --');
  a1.deposit(500); // Valid deposit
  a1.deposit(-100); // Invalid deposit

  // Withdrawal scenarios
  print('\n-- Withdrawal Scenarios --');
  a1.withdraw(200); // Valid withdrawal
  a1.withdraw(400); // Insufficient balance
  a1.withdraw(-50); // Invalid withdrawal

  // Display final account info
  print('\n-- Final Account Info --');
  a1.displayAccountInfo();
}

class BankAccount {
  String _accountID;
  double _balance;

  BankAccount(this._accountID) : _balance = 0;

  void deposit(double amount) {
    if (amount <= 0) {
      print("Error: deposit amount should be positive.");
    } else {
      _balance += amount;
      print("Successful: deposit done, now balance is $_balance.");
    }
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      print("Error: withdrawal amount should be positive.");
    } else if ((_balance - amount) >= 0) {
      this._balance -= amount;
      print("Successful: withdrawal done, now balance is $_balance.");
    } else {
      print("Error: account balance is not sufficient");
    }
  }

  void displayAccountInfo() {
    print("Account ID is $_accountID and balance is $_balance.");
  }
}
