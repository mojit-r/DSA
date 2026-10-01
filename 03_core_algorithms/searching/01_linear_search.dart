// finding a value inside a list using linear search
// Time complexity: O(n)
// Space complexity: O(1)

int solution(List<int> numbers, int target) {
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] == target) {
      return i;
    }
  }
  return -1;
}

void main() {
  List<int> numbers = [10, 25, 7, 42, 18];
  int target = 42;

  print(solution(numbers, target));
}




/* 
- Need a list of numbers and a target value.
- Traverse the list using a loop.
- Compare each element with the target.
- Return the index immediately when the target is found.
- Return -1 if the target is not found.
*/