// finding a value inside a sorted list using linear search
// Time complexity:
// Space complexity:

int solution(List<int> numbers, int target) {
  int index = 0;
  while (numbers.isNotEmpty) {
    int mid = (numbers.length / 2).toInt();

    if (numbers.length == 1) {
      if (numbers[0] == target) {
        return index;
      }
      print('single val');
      return -1;
    }

    if (numbers[mid] == target) {
      print(numbers[mid]);
      return mid;
    } else if (numbers[mid] > target) {
      for (int i = mid; i <= numbers.length; i++) {
        numbers.remove(numbers[numbers.length - 1]);
      }
      print(numbers);
    } else {
      for (int i = 0; i <= mid; i++) {
        numbers.remove(numbers[0]);
        index++;
      }
      print(numbers);
    }
  }

  return -1;
}

void main() {
  final List<int> numbers = [3, 7, 12, 18, 25, 31, 40];
  int target = 25;

  print(solution(numbers, target));
}




/*
- Need a sorted list of numbers and a target
- find the middle value of the list using numbers.length/2
- compare the target value with the middle value
- if the target == middle, return middle
- if the target < middle, search the left half
- if the target > middle, search the rigth half
- Repeat until the target is found or left becomes greater than right.
- return -1 if the index is not in the list
*/