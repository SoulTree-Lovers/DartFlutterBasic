int year = 2023;

var flybyObjects = [1, 2, 3];

void main() {
  // if statement
  if (year >= 2001) {
    print("21st century");
  } else if (year >= 1901) {
    print("20th century");
  }

  // for loop
  for (final object in flybyObjects) {
    print(object);
  }

  for (int month = 1; month <= 12; month++) {
    print(month);
  }

  // while loop
  while (year < 2016) {
    year += 1;
  }
}
