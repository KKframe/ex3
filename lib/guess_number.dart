// ignore_for_file: avoid_print

import 'dart:io';
import 'dart:math';

import 'game.dart';

void main() {
  //const maxRandom = 100; //compile-time constant:มองเป็น literal ก่อนคอมไพล์ , datatype final จะใช้เมื่อต้องการให้อ่านได้อย่างเดียว ไม่ต้องเปลี่ยนค่าอีก
  //var random = Random();
  //var answer = random.nextInt(maxRandom) + 1;
  String? cmd ='Y';
  while(true){
    if(cmd!=null){
      if(cmd =='Y'||cmd =='y'){
        var game = Game();
        game.playGame();
      }if(cmd =='N'||cmd =='n'){
        print('Bye bye,see you again 👋👋👋');
        break;
      }
        stdout.write('Play again? (Y/N): ');
        cmd = stdin.readLineSync();
    }
  }


  //var guessCount = 0;


}

/*Refactoring = การปรับเปลี่ยนโครงสร้างโค้ด
โดยที่การทำงานยังคงเหมือนเดิม*/