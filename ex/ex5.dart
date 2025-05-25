/*
 Find the Longest Word
 Write a function that takes a sentence as input and returns the longest word in the sentence.
 If multiple words have the same longest length, return the first one that appears
 */

import 'dart:io';

void main() {
  print("Enter a sentence:");
  String sentence = stdin.readLineSync()!;

  String longestWord = findLongestWord(sentence);
  print("The longest word is: $longestWord");
}

String findLongestWord(String sentence) {
  List<String> words = sentence.split(' '); 
  String longest = '';

  for (String word in words) {
    if (word.length > longest.length) {
      longest = word;
    }
  }
  return longest;
}

