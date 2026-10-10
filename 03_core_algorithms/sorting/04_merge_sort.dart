  // Sorting using merge sort
  // Time complexity: 
  // Space complexirt: 












  /*
  first = [2, 5, 8]
  second = [1, 3, 7]

  combined = []

  - taking the two list as the input 
  - create a for loop (with i < first.length) (as both loops are same size in this example)
  - we will compare the first[i] < second[i]
  - and which ever one is smaller well will add it first in the combined and then the next one 
  (so if first[i] is smaller then we will do 
  combinded.add(first[i]);
  combinded.add(second[i]);
  )
  - and we will return the combined list.



  - but if the input changes like the given below one then we have to change the approch
  [1, 2, 3]
  [4, 5, 6, 7]

  combined = []

  - we will be having 2 loops one is for the first element and second is for the second element 

  1 < 4 -> add 1 in combined -> break
  combined will be [1]

  2 < 4 -> add 12 in combined -> break
  combined will be [1, 2]

  if (i+1 == first.length) (then we have to let the second loop complete till the end)
  3 < 4 -> add 3 in combined -> add second[j] (as it is the inner loop) -> break
  combined will be [1, 2, 3, 4, 5, 6]

  */



