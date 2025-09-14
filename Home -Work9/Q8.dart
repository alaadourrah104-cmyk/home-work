// Q8 Ask the user to input a sentence. Print all the words that appear only once in the sentence. Also
// print the total count of unique words.
import 'dart:io';

void main() {
  stdout.write("Enter a sentence: ");
  String sentence = stdin.readLineSync()!;

  List<String> words = sentence.split(' ');

  print("Unique words :");
  int count = 0;

  for (var word in words) {
    if (words.where((w) => w == word).length == 1) {
      print(word);
      count++;
    }
  }

  print("Total unique words: $count");
}
