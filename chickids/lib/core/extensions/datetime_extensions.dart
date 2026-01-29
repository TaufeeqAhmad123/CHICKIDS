import 'package:intl/intl.dart';

/// DateTime Extensions
///
/// Useful extensions for DateTime formatting and manipulation
extension DateTimeExtensions on DateTime {
  /// Formats date as 'dd/MM/yyyy'
  String get formattedDate => DateFormat('dd/MM/yyyy').format(this);

  /// Formats time as 'HH:mm'
  String get formattedTime => DateFormat('HH:mm').format(this);

  /// Formats date and time as 'dd/MM/yyyy HH:mm'
  String get formattedDateTime => DateFormat('dd/MM/yyyy HH:mm').format(this);

  /// Formats date as 'MMM dd, yyyy' (e.g., Jan 01, 2024)
  String get formattedDateLong => DateFormat('MMM dd, yyyy').format(this);

  /// Formats date as 'EEEE, MMM dd, yyyy' (e.g., Monday, Jan 01, 2024)
  String get formattedDateFull => DateFormat('EEEE, MMM dd, yyyy').format(this);

  /// Custom format
  String format(String pattern) => DateFormat(pattern).format(this);

  /// Returns time ago string (e.g., '2 hours ago')
  String get timeAgo {
    final now = DateTime.now();
    final difference = now.difference(this);

    if (difference.inDays > 365) {
      final years = (difference.inDays / 365).floor();
      return '$years ${years == 1 ? 'year' : 'years'} ago';
    } else if (difference.inDays > 30) {
      final months = (difference.inDays / 30).floor();
      return '$months ${months == 1 ? 'month' : 'months'} ago';
    } else if (difference.inDays > 0) {
      return '${difference.inDays} ${difference.inDays == 1 ? 'day' : 'days'} ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours} ${difference.inHours == 1 ? 'hour' : 'hours'} ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes} ${difference.inMinutes == 1 ? 'minute' : 'minutes'} ago';
    } else {
      return 'Just now';
    }
  }

  /// Checks if the date is today
  bool get isToday {
    final now = DateTime.now();
    return year == now.year && month == now.month && day == now.day;
  }

  /// Checks if the date is yesterday
  bool get isYesterday {
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    return year == yesterday.year &&
        month == yesterday.month &&
        day == yesterday.day;
  }

  /// Checks if the date is tomorrow
  bool get isTomorrow {
    final tomorrow = DateTime.now().add(const Duration(days: 1));
    return year == tomorrow.year &&
        month == tomorrow.month &&
        day == tomorrow.day;
  }

  /// Returns the start of the day (00:00:00)
  DateTime get startOfDay => DateTime(year, month, day);

  /// Returns the end of the day (23:59:59)
  DateTime get endOfDay => DateTime(year, month, day, 23, 59, 59, 999);

  /// Adds days to the current date
  DateTime addDays(int days) => add(Duration(days: days));

  /// Subtracts days from the current date
  DateTime subtractDays(int days) => subtract(Duration(days: days));

  /// Checks if the date is in the past
  bool get isPast => isBefore(DateTime.now());

  /// Checks if the date is in the future
  bool get isFuture => isAfter(DateTime.now());

  /// Returns the day name (e.g., 'Monday')
  String get dayName => DateFormat('EEEE').format(this);

  /// Returns the month name (e.g., 'January')
  String get monthName => DateFormat('MMMM').format(this);
}

/// Duration Extensions
extension DurationExtensions on Duration {
  /// Converts duration to readable string (e.g., '2h 30m')
  String get toReadableString {
    final hours = inHours;
    final minutes = inMinutes.remainder(60);
    final seconds = inSeconds.remainder(60);

    final parts = <String>[];
    if (hours > 0) parts.add('${hours}h');
    if (minutes > 0) parts.add('${minutes}m');
    if (seconds > 0 && hours == 0) parts.add('${seconds}s');

    return parts.isEmpty ? '0s' : parts.join(' ');
  }
}
