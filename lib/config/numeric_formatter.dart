import 'package:intl/intl.dart';

class NumericFormatter {

  // Formats a number into a compact form (e.g., 1.2K, 3.4M)
  static String compactFormat(double number) {
    return NumberFormat.compactCurrency(symbol: '', decimalDigits: 0)
        .format(number);
  }
}
