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
            "Total in '${categoryChosen.trim()}': \$${totalByCategory.toStringAsFixed(2)}",
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

void printMenu() {
  print("===== Expense Tracker Menu =====");
  print("1. Add Expense");
  print("2. View Total Spending");
  print("3. View Spending by Category");
  print("4. Exit");
  print("Enter Your Choice: ");
}

void addExpense({
  required List<Map<String, double>> expenses,
  required double amount,
  required String category,
}) {
  for (var expense in expenses) {
    if (expense.containsKey(category)) {
      expense[category] = expense[category]! + amount;
      print(
        "Category '$category' already exists. Amount updated to ${expense[category]!.toStringAsFixed(2)}\$.",
      );
      return;
    }
  }

  expenses.add({category: amount});
  print(
    "New category $category added with amount ${amount.toStringAsFixed(2)}\$.",
  );
}

double getTotalSpending({required List<Map<String, double>> expenses}) {
  double total = 0.0;
  for (var expense in expenses) {
    total += expense.values.first;
  }
  return total;
}

double getCategoryTotal(List<Map<String, double>> expenses, String category) {
  double total = 0.0;
  for (var expense in expenses) {
    if (expense.containsKey(category)) {
      total += expense[category]!;
    }
  }
  return total;
}
