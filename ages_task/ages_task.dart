import 'dart:io';

String? nameInput() {
  return stdin.readLineSync();
}

int? agesInput() {
  return int.tryParse(stdin.readLineSync()!);
}

void main() {
  String? name = "";
  int? ages = null;

  while (name!.isEmpty == true) {
    print("What is your name (you cannot enter an empty string)?");
    name = nameInput();
  }

  while (ages == null || ages < 0) {
    print("How old are you (you can only enter numbers that are greater than 0)?");
    ages = agesInput();
  }
  
  int? result = 100 - ages;
  
  if (result > 0)
    print("$name, you need to live $result more years to be 100!");
  else
    print("$name, you are already 100 years old!");

}
