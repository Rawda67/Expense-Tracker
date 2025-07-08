import 'expense_tracker.dart';
import 'dart:io';

void main() {
  List<Map<String, double>> expenses = [];
  int? choice;

  do {
    printMenu();
    int choice = int.parse(stdin.readLineSync()!.trim());

    switch (choice) {
      case 1:
        print("Enter amount:");
        double amount = double.parse(stdin.readLineSync()!.trim());

        if (amount <= 0) {
          print("Invalid amount, please enter a number greater than 0");
          break;
        }

        print("Enter category:");
        String? category = stdin.readLineSync();

        if (category != null && category.trim().isNotEmpty) {
          addExpense(
            expenses: expenses,
            amount: amount,
            category: category.trim(),
          );
        } else {
          print("Invalid input. Please try again.");
        }
        break;

      case 2:
        double total = getTotalSpending(expenses: expenses);
        print("Total Spending: ${total.toStringAsFixed(2)}\$");
        break;

      case 3:
        print("Enter category to view:");
        String? categoryChosen = stdin.readLineSync();
        if (categoryChosen != null && categoryChosen.trim().isNotEmpty) {
          double totalByCategory = getCategoryTotal(
            expenses,
            categoryChosen.trim(),
          );
          print(
            "Total in ${categoryChosen.trim()} : ${totalByCategory.toStringAsFixed(2)}\$",
          );
        } else {
          print("Invalid category.");
        }
        break;

      case 4:
        print("Exiting program!");
        break;

      default:
        print("Invalid choice. Please select a number from the menu.");
    }
  } while (choice != 4);
}
