import 'dart:io';

void main() {
  print("Pls,Enter Your Name : ");
  String userName = stdin.readLineSync()!;
  print("Welcome" + " " + userName);
}
