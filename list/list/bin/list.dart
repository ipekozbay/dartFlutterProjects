import 'package:list/list.dart' as list;
import 'dart:io';

void main(List<String> arguments) {
  List<int> numbers = [];

  for (var i = 0; i < 9; i++) {
    int? number = int.parse(stdin.readLineSync()!);
  numbers.add(number);
  }
  
  numbers.sort();
  print("small to large");
  print(numbers);

  print("big to small");
  var reversedList = new List.from(numbers.reversed);
  print(reversedList);
}
