// calculating a number raised to a power.
// Time complexity: O(e)
// Space complexity: O(e)

int power(int base, int exponent) {
  if (exponent < 0) {
    throw ArgumentError('Exponent must be non-negative');
  }

  if (exponent == 0) {
    return 1;
  }

  return base * power(base, exponent - 1);
}

void main() {
  int base = 2;
  int exponent = -3;

  try {
    print(power(base, exponent));
  } catch (e) {
    print(e);
  }
}

/*
- take the base and exponent as input to the function
- check the condition if the exponent value is smaller than 0, then throw ArgumentError()
- check a base condition if the exponent value is == 0, if yes then return 1.
- then at the end return the base * power(base, exponent - 1)
*/
