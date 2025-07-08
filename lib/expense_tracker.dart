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
        "Category $category already exists. Amount updated to ${expense[category]!.toStringAsFixed(2)}\$.",
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
