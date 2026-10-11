// Sorting using merge sort
// Time complexity:
// Space complexirt:

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
    if (first[i] < second[j]) {
      combined.add(first[i]);
      i++;
    }
  }

  while (j < second.length) {
    if (i >= first.length) {
      combined.add(second[j]);
      j++;
      continue;
    }
    if (second[j] < first[i]) {
      combined.add(second[j]);
      j++;
    }
  }

  return combined;
}

void main() {
  List<int> first = [1, 2, 8, 11, 13];
  List<int> second = [4, 5, 6, 7];

  print(solution(first, second));
}

/*
first = [1, 2, 8, 11, 13]
second = [4, 5, 6, 7]

i = 0
j = 0
combined = []

- we will be having 2 while loops one is for the first element and second is for the second element 
- the first while loop will check (i < first.length) the second while loop will check (j < second.length)

- inside both loops compare the elements of both lists and which ever list element is smaller we will add that element in the list
- and will increase the pointere valraiable of that element.

- while (i < first.length) {
    if (j >= second.length) {
      combined.add(first[i]);
      i++;
      continue;
    }

    while (j < second.length) {
      if (i + 1 >= first.length) {
        if (first[i] < second[j]) {
          combined.add(first[i]);
        }
      }

      if (first[i] < second[j]) {
        combined.add(first[i]);
        i++;
        break;
      }
      combined.add(second[j]);
      j++;
    }
  }

*/
