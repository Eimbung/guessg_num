import 'dart:io';
import 'gamee.dart';

void main() {
  var game = Game();

  var again = true;
  var isWrong = false;

  do {
    game.playGame();
    do {
      stdout.write('Do you want to play again (y/n):');
      var p = stdin.readLineSync();
      if (p == 'Y' || p == 'y') {
        isWrong = false;
        again = true;
      } else if (p == 'N' || p == 'n') {
        isWrong = false;
        again = false;
      } else {
        isWrong = true;
      }
    }
    while (isWrong);
  }
  while (again);
}
