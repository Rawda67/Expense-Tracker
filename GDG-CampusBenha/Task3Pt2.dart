import 'dart:io';

void main() {
  print("Enter The Char You Want To Check: ");
  String char = stdin.readLineSync()!;
  if (char.length > 1) {
    print("Pls,Enter One Char!");
  } else {
    switch (char[0].toLowerCase()) {
      case "a" || "e" || "i" || "o" || "u":
        {
          print("Vowel");
        }
        break;
      default:
        print("Constant");
    }
  }
}
