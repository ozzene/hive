class FormatHelper {
  static String formatCurrency(double amount) {
    return '\$${amount.toStringAsFixed(2)}';
  }

  static String capitalize(String input) {
    return input[0].toUpperCase() + input.substring(1);
  }
}
