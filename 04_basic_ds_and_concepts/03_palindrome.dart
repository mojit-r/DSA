// checking if the string is palindrome (any string that reads the exact same way backward and forward) or not
// Time complexity: O(n²)
// Space complexity: O(n²)

bool isPalindrome(String text, int length, {int i = 0}) {
  if (length - (i + i) <= 1) {
    return true;
  }

  if (text[i] == text[text.length - 1]) {
    return isPalindrome(text.substring(0, text.length - 1), length, i: i + 1);
  }

  return false;
}

void main() {
  final String text = 'level';
  final int length = text.length;
  print('$text : ${isPalindrome(text, length)}');
}


/*
- take the string text, length and int i=0 as input.
- create a variable i with value 0 and pass it with each fuction call while incresing its value.
- check if the length of the string minus double the value of i is <= 1, if yes than return true.
- check if the text[i] == text[text.length - 1], if true then call the function isPalindrome(text.substring(0, text.length - 1), length, i++)
- if the condition is not true then return the false directly.
*/



/*
// palindrome without recussion
bool isPalindrome(String text) {
  int i = 0;
  while (i <= text.length ~/ 2) {
    if (text.length - (i + i) <= 1) {
      return true;
    }
    print(
      '${text[i]} == ${text[text.length - 1 - i]} : ${text[i] == text[text.length - 1 - i]}',
    );
    if (text[i] == text[text.length - 1 - i]) {
      i++;
    } else {
      return false;
    }
  }
  return false;
}

void main() {
  final String text = 'level';
  print('$text : ${isPalindrome(text)}');
}
*/


/*
- i still ain't able to think how the palindrome will be calculated recurrsively, but first trying to find it without recurrsion.
- take the string as an input to the methond.
- we will create a counter i = 0 (for the index comparing from both forward and backward).
- in while loop we will put the condition that if (i <= text.length ~/ 2.
- inside the while loop we will the first condition we will check is that if (text.length - (i+i) <= 1), then return true;
- and the second condition would be that if (text[i] == text[text.length - 1 - i]), then we will increase the counter i++.
- else false will be returned.
- and at the end of the list we will increase the counter by doing i++.
*/
