// Define an enumeration for weekdays
enum Weekday {
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday,
  Sunday
}

// Define a class to represent a person
class Person {
  String name;
  int age;

  // Constructor
  Person(this.name, this.age);

  // Method that returns a string representation of the person
  String toString() {
    return "$name is $age years old.";
  }
}

// Define an interface for printable objects
abstract class Printable {
  void printSelf();
}

// Define a function that takes a list of integers and returns their sum
int sum(List<int> numbers) {
  int result = 0;
  for (int number in numbers) {
    result += number;
  }
  return result;
}

void main() {
  // Declare and initialize variables of different types
  bool isTrue = true;
  int integer = 42;
  double floatingPoint = 3.14;
  String str = "Hello, World!";
  Runes runes = Runes('\u{1f600}');

  // Print the values of the variables
  print("isTrue = $isTrue");
  print("integer = $integer");
  print("floatingPoint = $floatingPoint");
  print("str = $str");
  print("runes = ${String.fromCharCodes(runes)}");

  // Create a list of integers and call the sum() function
  List<int> numbers = [1, 2, 3, 4, 5];
  int numbersSum = sum(numbers);
  print("sum of numbers = $numbersSum");

  // Use a for loop to iterate over the days of the week
  for (Weekday day in Weekday.values) {
    print(day);
  }

  // Create an instance of the Person class and print its string representation
  Person person = Person("John", 30);
  print(person);

  // Create a map of integer keys and string values
  Map<int, String> map = {1: "one", 2: "two", 3: "three"};

  // Use a for-in loop to iterate over the keys and values of the map
  for (int key in map.keys) {
  print("key: $key, value: ${map[key]}");
  }
}
