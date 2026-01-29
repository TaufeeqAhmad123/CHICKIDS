/// App Constants
///
/// This file contains all the constant values used throughout the application
/// including API endpoints, keys, configurations, and other static values.

class AppConstants {
  // App Information
  static const String appName = 'CHICKIDS';
  static const String appVersion = '1.0.0';

  // API Configuration
  static const String baseUrl = 'https://api.example.com';
  static const String apiVersion = 'v1';
  static const Duration apiTimeout = Duration(seconds: 30);

  // Storage Keys
  static const String keyToken = 'auth_token';
  static const String keyUserId = 'user_id';
  static const String keyUserEmail = 'user_email';
  static const String keyThemeMode = 'theme_mode';
  static const String keyLanguage = 'language';
  static const String keyFirstLaunch = 'first_launch';

  // Pagination
  static const int defaultPageSize = 20;
  static const int maxPageSize = 100;

  // Timing
  static const int splashDuration = 3; // seconds
  static const int debounceDelay = 300; // milliseconds
  static const int animationDuration = 300; // milliseconds

  // Validation
  static const int minPasswordLength = 8;
  static const int maxPasswordLength = 50;
  static const int minUsernameLength = 3;
  static const int maxUsernameLength = 30;

  // UI Constants
  static const double defaultPadding = 16.0;
  static const double smallPadding = 8.0;
  static const double largePadding = 24.0;
  static const double defaultBorderRadius = 12.0;
  static const double cardElevation = 2.0;

  // Image Constraints
  static const int maxImageSizeMB = 5;
  static const int imageQuality = 85;

  // Date Formats
  static const String dateFormat = 'dd/MM/yyyy';
  static const String timeFormat = 'HH:mm';
  static const String dateTimeFormat = 'dd/MM/yyyy HH:mm';

  // RegEx Patterns
  static const String emailPattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
  static const String phonePattern = r'^\+?[1-9]\d{1,14}$';
  static const String urlPattern =
      r'^https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)$';

  // Social Media URLs
  static const String facebookUrl = 'https://facebook.com/';
  static const String twitterUrl = 'https://twitter.com/';
  static const String instagramUrl = 'https://instagram.com/';
  static const String linkedinUrl = 'https://linkedin.com/';

  // Error Messages
  static const String networkError =
      'Network error. Please check your connection.';
  static const String serverError = 'Server error. Please try again later.';
  static const String unknownError = 'Something went wrong. Please try again.';
  static const String timeoutError = 'Request timeout. Please try again.';

  // Success Messages
  static const String successLogin = 'Login successful!';
  static const String successLogout = 'Logout successful!';
  static const String successRegistration = 'Registration successful!';
  static const String successUpdate = 'Update successful!';
  static const String successDelete = 'Delete successful!';
}
