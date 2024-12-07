import 'dart:convert';
import 'dart:io';
import 'package:interact/interact.dart';
// import 'package:puzzle_game/puzzle_game.dart' as puzzle_game;

// void main() {
//   stdout.write("Enter your name : ");
//   var name = stdin.readLineSync();
//   stdout.write(name);
// }

void main(List<String> arguments) {
  print('Hello world:!');

  // var line = stdin.readLineSync(encoding: utf8);
  // print(line?.trim() == '2' ? 'Yup!' : 'Nope :(');

  final languages = ['С верху', 'С права', 'С низу', 'С права'];
  print(languages.join(' | '));
  final selection = Select(
    prompt: 'Привет \n Начнем?',
    options: languages,
  ).interact();

  print('${languages[selection]}');

  // readLine().listen(processLine);
}

Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void processLine(String line) {
  print(line);
}

class Puzzle15 {
  List<List<int>> _fields = [];
  int fieldSize;

  Puzzle15({required this.fieldSize}) {
    int count = 0;
    for (int i = 0; i < 4; i++) {
      List<int> field = [];
      for (int j = 0; j < 4; j++) {
        field.add(++count);
      }
      _fields.add(field);
    }
  }

  String print() {
    // String drowField = '';
    // _fields.forEach((field) => {\
    //   drowField = drowField + field.join(' | ')
    // });
    return '';
  }
}
