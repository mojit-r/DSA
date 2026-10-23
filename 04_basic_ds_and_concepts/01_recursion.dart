// practising recursion
// Time complexity: O(n)
// Space complexity: O(n)

int sumNumbers(int n) {
  if (n <= 0) {
    return 0;
  }
  return n + sumNumbers(n - 1);
}

int factorial(int n) {
  if (n < 0) {
    throw ArgumentError('factorial of $n is undefined');
  }
  if (n == 0) {
    return 1;
  }
  return n * factorial(n - 1);
}

void main() {
  int number = 4;

  print(sumNumbers(number));

  try {
    print('$number! = ${factorial(number)}');
  } catch (e) {
    print(e);
  }
}



/* 
- for sumNumbers(int n)

1. What should the base case be?
- the base case can be n <= 0 as this is how we do it in the loops, 
  but here it can be n == 0 as once the condition is met we will directly return 0 (but i tested it will return errors on negative value so <= is better),
  in this case return 0 when we reach the base case.

2. What should the recursive return statement be?
- the recursion return statement should be return n + sumNumbers(n-1)

- take the number as input.
- check if the number is <= to 0, if yes then return 0
- if number is greater than 0 then we can directly return n + sumnumbers(n-1).
- which will recursively call itself again and again for the smaller number. 
- and once it will get 0 as a returned value, it will start add the number which was there while the return time and will move out of the methods
- and in the end we will get out output as the sum of all the numbers.
*/


/* 
- for factorial(int n)

1. Write your base case.
- the base case will be n== 0, but the return value would be return 1
- the can also be a security parameter that if the n < 0, it should be undefined and can throw error and we can catch it at main()

2. Write your recursive return statement.
- the recursive return statement would be n * factorial(n-1)

- in this too we'll take the number as input.
- if the number is -1, we will throw argument error of factorial is undefined.
- if the number is 0, we will return 1.
- then we will return n * factorial(n-1)
- and it will work same as old method and call itself again and again with smaller value
- and when the base value is reached it will start returning and multipling.
- and we will get the return answer as a factorial of a number.
*/