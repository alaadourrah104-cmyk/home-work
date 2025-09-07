// Q3. Word Reversal & Vowel Count - Take a word from the user. - Print the word reversed, and also
// count how many vowels it has.

import 'dart:io';

void main() {
  print("Enter a word");
  String word = stdin.readLineSync()!;
  int count = 0;
  String reverse = "";
  // word.length - 1=index
  for (int i = word.length - 1; i >= 0; i--) {
    reverse = reverse + word[i];
  }
  // String reverse = word.split(' ').reversed.join();
  print("reverse word is $reverse");
  String vowels = "aAeEiIOouU";
  for (int i = 0; i < word.length; i++) {
    if (vowels.contains(word[i])) {
      count++;
    }
  }
  print("number of vowel is $count");
}
