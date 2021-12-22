import 'dart:math';
// ignore_for_file: avoid_print
import 'dart:io';

class Game{ //camel case
  static const maxRandom = 100;
  int? _ans; //กำหนดตป.ให้เป็น package private  --> _ตป.
  int _guessCount = 0;
  var isCorrect = false;
  Game(){
    _ans =Random().nextInt(maxRandom)+1;
  }
  int getCount(){
    return _guessCount;
  }
  void playGame(){
    print('╔════════════════════════════════════════');
    print('║            GUESS THE NUMBER            ');
    print('╟────────────────────────────────────────');

    do {
      stdout.write('║ Guess the number between 1 and $maxRandom: ');
      var input = stdin.readLineSync();
      var guess = int.tryParse(input!);
      if (guess == null) {
        continue;
      }

      //guessCount++; //HW : ย้ายอันนี้ไปคลาส Game
      var result = doGuess(guess);
      if (result==1) {
        print('║ ➜ $guess is TOO HIGH! ▲ ');
        print('╟────────────────────────────────────────');
      } else if (result==-1) {
        print('║ ➜ $guess is TOO LOW! ▼ ');
        print('╟────────────────────────────────────────');
      }  else if (result== 0 )  {
        print('║ ➜ $guess is CORRECT ❤, total guesses: '+(getCount()).toString());
        print('╟────────────────────────────────────────');
        isCorrect = true;
      }
    } while (!isCorrect);

    print('║                 THE END                ');
    print('╚════════════════════════════════════════');
  }
  int doGuess(int num){
    _guessCount ++;
    //ทายถูก return 0
    //ทายมากไป return 1
    //ทายน้อยไป return -1
    if (num > _ans!) {
      return 1;
    } else if (num < _ans!) {
      return -1;
    } else {
      return 0;
    }
  }
}