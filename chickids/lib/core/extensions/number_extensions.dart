/// Number Extensions
///
/// Useful extensions for int and double
extension IntExtensions on int {
  /// Checks if the number is even
  bool get isEven => this % 2 == 0;

  /// Checks if the number is odd
  bool get isOdd => this % 2 != 0;

  /// Checks if the number is positive
  bool get isPositive => this > 0;

  /// Checks if the number is negative
  bool get isNegative => this < 0;

  /// Formats the number with thousand separators
  String get formatted {
    return toString().replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
      (Match m) => '${m[1]},',
    );
  }

  /// Converts to ordinal string (e.g., 1 -> '1st', 2 -> '2nd')
  String get ordinal {
    if (this % 100 >= 11 && this % 100 <= 13) {
      return '${this}th';
    }
    switch (this % 10) {
      case 1:
        return '${this}st';
      case 2:
        return '${this}nd';
      case 3:
        return '${this}rd';
      default:
        return '${this}th';
    }
  }

  /// Executes a function n times
  void times(void Function(int) action) {
    for (var i = 0; i < this; i++) {
      action(i);
    }
  }
}

extension DoubleExtensions on double {
  /// Rounds to a specific number of decimal places
  double toPrecision(int decimals) {
    final mod = 10.0.pow(decimals);
    return (this * mod).round() / mod;
  }

  /// Formats the number with thousand separators and decimal places
  String toFormattedString({int decimals = 2}) {
    return toStringAsFixed(decimals).replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
      (Match m) => '${m[1]},',
    );
  }

  /// Checks if the number is positive
  bool get isPositive => this > 0;

  /// Checks if the number is negative
  bool get isNegative => this < 0;

  /// Converts to currency format (e.g., $1,234.56)
  String toCurrency({String symbol = '\$', int decimals = 2}) {
    return '$symbol${toFormattedString(decimals: decimals)}';
  }

  /// Converts to percentage format (e.g., 75.5%)
  String toPercentage({int decimals = 1}) {
    return '${toStringAsFixed(decimals)}%';
  }
}

extension NumExtensions on num {
  /// Checks if number is between two values (inclusive)
  bool isBetween(num min, num max) {
    return this >= min && this <= max;
  }

  /// Clamps the number between min and max
  num clampValue(num min, num max) {
    if (this < min) return min;
    if (this > max) return max;
    return this;
  }
}

// Helper extension for pow
extension _Pow on double {
  double pow(num exponent) {
    var result = 1.0;
    for (var i = 0; i < exponent; i++) {
      result *= this;
    }
    return result;
  }
}
