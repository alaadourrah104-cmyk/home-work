// Q6. Number Guessing (3 Tries) - Generate a random number between 1 and 20. - Let the user
// guess up to 3 times. If they fail, reveal the correct number.
import 'dart:io';
import 'dart:math';

void main() {
  int number = Random().nextInt(20) + 1;
  int tries = 3;
  bool guess = false;
  for (int i = 1; i < tries; i++) {
    print("Enter  number ");
    int guess = int.parse(stdin.readLineSync()!);
    if (guess == number) {
      print("You guessed correctly");
      return;
    } else if (guess < number) {
      print("guess lower than number");
    } else {
      print("guess highter than number");
    }
  }
  print("the correct number is $number");
}
