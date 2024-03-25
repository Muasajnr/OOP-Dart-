import 'dart:io';

// Define an interface
abstract class Animal {
  void makeSound();
}

// Define a superclass
class LivingThing {
  void breathe() {
    print('Breathing...');
  }
}

// Define a subclass that implements an interface and overrides a method
class Dog extends LivingThing implements Animal {
  @override
  void makeSound() {
    print('Woof! Woof!');
  }
}

// Define a class that reads data from a file and initializes an instance
class FileReader {
  String readDataFromFile(String fileName) {
    File file = File(fileName);
    return file.readAsStringSync();
  }
}

// Define a method that demonstrates the use of a loop
void printNumbers(int n) {
  for (int i = 1; i <= n; i++) {
    print(i);
  }
}

void main() {
  // Test inheritance
  Dog dog = Dog();
  dog.breathe(); // Inherited method from superclass
  dog.makeSound(); // Implemented method from interface

  // Test file reading and initialization
  FileReader fileReader = FileReader();
  String data = fileReader.readDataFromFile('data.txt');
  print('Data from file: $data');

  // Test loop
  printNumbers(5);
}
