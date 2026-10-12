// Sorting using merge sort
// Time complexity: O(n + m)
// Space complexirt: O(n + m)

List<int> solution(List<int> first, List<int> second) {
  List<int> combined = [];
  int i = 0;
  int j = 0;

  while (i < first.length) {
    if (j >= second.length) {
      combined.add(first[i]);
      i++;
      continue;
    }
    if (first[i] <= second[j]) {
      combined.add(first[i]);
      i++;
    } else {
      combined.add(second[j]);
      j++;
    }
  }

  while (j < second.length) {
    combined.add(second[j]);
    j++;
  }

  return combined;
}

void main() {
  List<int> first = [1, 2, 8, 11, 13];
  List<int> second = [4, 5, 6, 7, 13, 14, 15];

  print(solution(first, second));
}

/*
first = [1, 2, 8, 11, 13]
second = [4, 5, 6, 7]

i = 0
j = 0
combined = []

- we will be having 2 separate while loops one is for the first element and second is for the second element 
- the first while loop will check (i < first.length) the second while loop will check (j < second.length)

- inside both loops compare the elements of both lists and which ever list element is smaller we will add that element in the list
- and will increase the pointer valriable of that element.
- in the first loop we will also keep the else point to add the element of the other list, in second loop it is not needed as the first list is already empty.

- if one list is >= list.length we will directly add the elements of the other list this will stop bugs of comparison and will reduce time of comparison.
- return the final combined list.

*/
