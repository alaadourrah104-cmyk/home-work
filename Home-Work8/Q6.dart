// Q6. Sentence Analyzer - Ask the user to input a sentence. - Print how many words it contains. -
// Then print the shortest word and the longest word from the sentence

import 'dart:io';

void main() {
  print("Enter a sentence :");
  String sentence = stdin.readLineSync()!;
  List<String> Words = sentence.trim().split(' ');
  String largestWord = Words[0];
  String shortestWord = Words[0];
  for (int i = 1; i < Words.length; i++) {
    if (Words[i].length > largestWord.length) {
      largestWord = Words[i];
    } else if (Words[i].length < shortestWord.length) {
      shortestWord = Words[i];
    }
  }
  print("Largest word is $largestWord");
  print("Shortest word is $shortestWord");
}
