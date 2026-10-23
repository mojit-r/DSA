// reversing the string
// Time complexity: O(n²)
// Space complexity: O(n²)

String reverseString(String text) {
  if (text.length <= 1) {
    return text;
  }

  String lastChar = text[text.length - 1];

  return lastChar + reverseString(text.substring(0, text.length - 1));
}

void main() {
  String word = 'level';

  print(reverseString(word));
}


/*
1. What is the simplest string that you can reverse without doing any work?
- a string which is empty or have only one character is the string which we can say that it is reversed by directly returning it.


2. How can you make the string smaller on each recursive call, then use the returned result to build the reversed string?
- Select the last character and save it.
- Recursively reverse the remaining substring.
- When the base case returns, prepend the saved character to the reversed result.
- Each recursive call adds its saved character as the calls return, producing the reversed string.

- take the string as an input.
- check if the string is empty or have only single element, and if yes then return it directly.
- pick the last element of the string and store it.
- return statement should be like adding the last element picked, with the reverseString method with removing the last element using the substring.
- the recurrsive calls will separate the last element one-by-one and at the end the single element will be returned directly without doing substring.
- then the last element will be joined one-by-one at the end of the return statements.

*/