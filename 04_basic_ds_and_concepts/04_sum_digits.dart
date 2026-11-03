// summing up the digits of the number
// Time complexity: O(d)
// Space complexity: O(d)

int sumDigits(List<int> splitDigits, {int sum = 0, index = 0}) {
  if (index >= splitDigits.length) {
    return sum;
  }

  sum = sum + splitDigits[index];
  return sumDigits(splitDigits, sum: sum, index: index + 1);
}

void main() {
  int number = -908;

  List<int> numberList = [];
  numberList.add(number);
  List<int> splitDigits = numberList[0]
      .abs()
      .toString()
      .split('')
      .map((digit) => int.parse(digit))
      .toList();

  print('$number : ${sumDigits(splitDigits)}');
  print('$number : ${summingDigits(number.abs())}');
}

/*
- convert the numbers into thee list of digits (or we could have converted into the String) in order to access the single digits.
- take the list of single digits as input,
- Maintain an index starting at zero.
- Add the digit at the current index to the sum.
- Increment the index and make the recursive call.
- Stop when the index reaches the list length.
*/

// another way trying without list as seen from the google(about other way of spliting numbers)
int summingDigits(int numbers, {int sum = 0}) {
  if (numbers <= 0) {
    return sum;
  }

  sum = sum + (numbers % 10);
  numbers = numbers ~/ 10;
  return summingDigits(numbers, sum: sum);
}
