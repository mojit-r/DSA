int solution(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError('The list cannot be empty');
  }

  int largest = numbers[0];

  for (var i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }

  return largest;
}

void main() {
  List<int> numbers = [32, 12, 54, 7, 28, 19, 41];

  print('The largest number from the list ${numbers} is ${solution(numbers)}');
}
