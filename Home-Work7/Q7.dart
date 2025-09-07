// Q7. Sentence Word Counter - Ask the user for a short sentence. - Print how many words it contains
// and how many characters (excluding spaces)
import 'dart:io';

void main() {
  print("Enter a short  sentence");
  String sentence = stdin.readLineSync()!;
  sentence = sentence.trim();
  List<String> words = sentence.split(' ');
  words.removeWhere((c) => c.isEmpty);
  int word = words.length;
  print("number of words is $word");

  List<String> character = sentence.replaceAll(' ', '').split('');
  // character.removeWhere((c) => c == " ");
  int numCharacter = character.length;
  print("number of  character is $numCharacter");
}
