// Q1
// Create a class BankAccount with a private field _balance.
// - Add a getter balance that returns the balance.
// - Add a setter balance that prevents setting it to a negative value (print 'Invalid balance' if attempted).
// - In main(), demonstrate creating an account, updating the balance, and trying to set a negative
// balance.

void main() {
  BankAccount account = BankAccount();
  account.balance = 20;
  print("${account.balance}");
  account.balance = -300;
  print("${account.balance}");
}

class BankAccount {
  int? _balance = 0;
  BankAccoun(int balance) {
    this._balance = balance;
  }

  int get balance => _balance!;
  set balance(int balance) {
    if (balance >= 0) {
      this._balance = balance;
    } else {
      print("Invalid balance");
    }
  }
}
