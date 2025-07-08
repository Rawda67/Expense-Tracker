import 'dart:io';

void main() {
  print("Enter Your Score : ");
  double score = double.parse(stdin.readLineSync()!);
  if (score < 0 || score > 100) {
    print("Invalid score! Please enter a number between 0 and 100.");
  } else {
    String grade = (score >= 90)
        ? "A"
        : (score >= 80 && score <= 89)
            ? "B"
            : (score >= 70 && score <= 79)
                ? "C"
                : (score >= 60 && score <= 69)
                    ? "D"
                    : "F";
    print("Your grade is: $grade");
  }
}
