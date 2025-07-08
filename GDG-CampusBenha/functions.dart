import 'dart:io';

void findEven({int? start, int? end}) {
  for (int i = start!; i <= end!; i++) {
    if (start % 2 == 0) {
      print("$start is even ");
    }
  }
}

void main() {
  print("Enter the number of the start:");
  int start = int.parse(stdin.readLineSync()!);
  print("Enter the number of the start:");
  int end = int.parse(stdin.readLineSync()!);
  findEven(start: start, end: end);
}
