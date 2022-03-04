import 'dart:math';
import 'dart:io';

void main() {
  int? input = -1;
  var rng = Random();

  int num = rng.nextInt(100);
  print("Okay, I guessed the number between 1 and 100");

  while (input != num) {
    input = int.tryParse(stdin.readLineSync()!);
    if (input == null || input > 100 || input < 1)
      print("Please, enter a number between 1 and 100");
    else if (input < num)
      print("Too low");
    else if (input > num)
      print("Too high");
    else if (input == num) print("Exactly right!");
  }
}
