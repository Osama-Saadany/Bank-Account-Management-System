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
      print("Error: deposit ammount should be postive.");
    } else {
      _balance += amount;
      print("Successful: deposite done, now balance is $_balance.");
    }
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      print("Error: withdrawal amount should be postive.");
    } else if ((_balance - amount) >= 0) {
      this._balance -= amount;
      print("Successful: withdrawal done, now balabce is $_balance.");
    } else {
      print("Error: account balance is not sufficient");
    }
  }

  void displayAccountInfo() {
    print("Account ID is $_accountID and balance is $_balance.");
  }
}
