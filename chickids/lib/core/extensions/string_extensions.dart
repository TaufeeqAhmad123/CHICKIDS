import 'package:flutter/material.dart';

/// String Extensions
///
/// Useful extensions for String manipulation and validation
extension StringExtensions on String {
  /// Capitalizes the first letter of the string
  String get capitalize {
    if (isEmpty) return this;
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  /// Capitalizes the first letter of each word
  String get capitalizeWords {
    if (isEmpty) return this;
    return split(' ').map((word) => word.capitalize).join(' ');
  }

  /// Checks if the string is a valid email
  bool get isValidEmail {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(this);
  }

  /// Checks if the string is a valid phone number
  bool get isValidPhone {
    return RegExp(r'^\+?[1-9]\d{1,14}$').hasMatch(this);
  }

  /// Checks if the string is a valid URL
  bool get isValidUrl {
    return RegExp(
      r'^https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)$',
    ).hasMatch(this);
  }

  /// Checks if the string contains only numbers
  bool get isNumeric {
    return RegExp(r'^[0-9]+$').hasMatch(this);
  }

  /// Checks if the string contains only alphabets
  bool get isAlpha {
    return RegExp(r'^[a-zA-Z]+$').hasMatch(this);
  }

  /// Checks if the string is alphanumeric
  bool get isAlphaNumeric {
    return RegExp(r'^[a-zA-Z0-9]+$').hasMatch(this);
  }

  /// Removes all whitespace from the string
  String get removeWhitespace {
    return replaceAll(RegExp(r'\s+'), '');
  }

  /// Truncates the string to a specified length and adds ellipsis
  String truncate(int maxLength, {String ellipsis = '...'}) {
    if (length <= maxLength) return this;
    return '${substring(0, maxLength)}$ellipsis';
  }

  /// Reverses the string
  String get reverse {
    return split('').reversed.join('');
  }

  /// Converts string to title case
  String get toTitleCase {
    return split(' ')
        .map(
          (word) => word.isEmpty
              ? ''
              : '${word[0].toUpperCase()}${word.substring(1).toLowerCase()}',
        )
        .join(' ');
  }

  /// Checks if string is null or empty
  bool get isNullOrEmpty {
    return isEmpty;
  }

  /// Returns the string or a default value if empty
  String orDefault(String defaultValue) {
    return isEmpty ? defaultValue : this;
  }
}
