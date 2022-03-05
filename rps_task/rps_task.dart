import 'dart:math';
import 'dart:io';

enum Move { Rock, Paper, Scissors, Quit }

Move? getPlayerMove() {
  print("(R)ock, (P)aper, (S)cissors? of (Q)uit?");
  String? selection = stdin.readLineSync()!.toUpperCase();
  switch (selection) {
    case 'R':
      return Move.Rock;
    case 'P':
      return Move.Paper;
    case 'S':
      return Move.Scissors;
    default:
      return Move.Quit;
  }
}

Move? getComputerMove() {
  int selection = Random().nextInt(3);
  switch (selection) {
    case 0:
      return Move.Rock;
    case 1:
      return Move.Paper;
    case 2:
      return Move.Scissors;
    default:
      break;
  }
}

//when i delete parentheses in a functions invocations
//it throws only "Computer wins" result
//i think this is because it goes to a default variant in
//switches, but how this feature calls? Is this getter?
void main() {
  while (true) {
    Move playerMove = getPlayerMove()!;
    if (playerMove == Move.Quit) break;
    Move computerMove = getComputerMove()!;
    print("Computer goes - $computerMove");
    if (playerMove == computerMove)
      print("Tie!");
    else if ((playerMove == Move.Rock && computerMove == Move.Scissors) ||
        (playerMove == Move.Paper && computerMove == Move.Rock) ||
        (playerMove == Move.Scissors && computerMove == Move.Paper))
      print("You win!");
    else if (playerMove != computerMove) print("Computer wins((");
  }
}
