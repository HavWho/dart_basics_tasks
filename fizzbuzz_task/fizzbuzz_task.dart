//first solution - with generated int list
void fizzBuzzFirst() {
  final fizzBuzzList = List.generate(101, (i) => i++).skip(1);
  var resList = <String>[];
  for (int i = 0; i < fizzBuzzList.length; i++) {
    if (fizzBuzzList.elementAt(i) % 3 == 0 &&
        fizzBuzzList.elementAt(i) % 5 == 0)
      resList.add("FizzBuzz");
    else if (fizzBuzzList.elementAt(i) % 5 == 0)
      resList.add("Buzz");
    else if (fizzBuzzList.elementAt(i) % 3 == 0)
      resList.add("Fizz");
    else
      resList.add(fizzBuzzList.elementAt(i).toString());
  }
  print(resList);
}

//second solution - with list of dynamic variables
//works faster than first solution, but it's difference in 0.01 seconds
//and doesn't fulfill the "Put inputs in code as a constant" condition
//but i'm like it anyway because there is some stuff to think about
void fizzBuzzSecond() {
  final fizzBuzzList = <dynamic>[];
  for (int i = 1; i < 101; i++) {
    if (i % 3 == 0 && i % 5 == 0)
      fizzBuzzList.add("FizzBuzz");
    else if (i % 5 == 0)
      fizzBuzzList.add("Buzz");
    else if (i % 3 == 0)
      fizzBuzzList.add("Fizz");
    else
      fizzBuzzList.add(i);
  }
  print(fizzBuzzList);
}

//final - runtime constant
//const - compile-time constant
//there is troubles while creating list with 'const' keyword
//that's the reason why i am using final

void main() {
  print("First solution: ");
  print("   ");
  fizzBuzzFirst();
  print("<==========================================>");
  print("Second solution: ");
  print("   ");
  fizzBuzzSecond();
}
