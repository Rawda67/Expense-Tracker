import 'dart:io';

void main() {
  print("Enter the distance from office to home in km :");
  double distance = double.parse(stdin.readLineSync()!);
  print("Enter Your Speed In Km/h : ");
  double speed = double.parse(stdin.readLineSync()!);
  print(
      "The Tme Taken To Reach Office In Minutes = ${(distance / speed) * 60}");
}
