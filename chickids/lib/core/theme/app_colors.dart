import 'package:flutter/material.dart';

/// CHICKIDS App Color Palette
/// Based on the e-commerce design for kids clothing
class AppColors {
  // Primary Brand Colors

  static const Color backgroundColor= Color(0xFF343438); // Dark charcoal
  static const Color primary = Color(0xFF2D2D2D); // Dark charcoal
  static const Color primaryLight = Color(0xFF3A3A3A);
  static const Color primaryDark = Color(0xFF1A1A1A);

  // Secondary Colors (Cream/Beige accents)
  static const Color secondary = Color(0xFFF5F5F5); // Cream white
  static const Color secondaryLight = Color(0xFFFFFFFF);
  static const Color secondaryDark = Color(0xFFE8E8E8);

  // Accent Colors (Brown/Beige for buttons and highlights)
  static const Color accent = Color(0xFFD4A574); // Warm beige/tan
  static const Color accentLight = Color(0xFFE6C9A8);
  static const Color accentDark = Color(0xFFB8925F);

  // Neutral Colors - Light Theme
  static const Color lightBackground = Color(0xFFFAFAFA);
  static const Color lightSurface = Color(0xFFFFFFFF);
  static const Color lightSurfaceVariant = Color(0xFFF5F5F5);
  static const Color lightOnBackground = Color(0xFF2D2D2D);
  static const Color lightOnSurface = Color(0xFF3A3A3A);
  static const Color lightOnSurfaceVariant = Color(0xFF757575);

  // Neutral Colors - Dark Theme (Primary theme for CHICKIDS)
  static const Color darkBackground = Color(0xFF1A1A1A); // Very dark gray
  static const Color darkSurface = Color(0xFF2D2D2D); // Dark charcoal
  static const Color darkSurfaceVariant = Color(0xFF3A3A3A);
  static const Color darkOnBackground = Color(0xFFFAFAFA); // Off-white
  static const Color darkOnSurface = Color(0xFFFFFFFF); // Pure white
  static const Color darkOnSurfaceVariant = Color(0xFFB8B8B8); // Light gray

  // Semantic Colors
  static const Color success = Color(0xFF4CAF50);
  static const Color warning = Color(0xFFFF9800);
  static const Color error = Color(0xFFF44336);
  static const Color info = Color(0xFF2196F3);

  // Text Colors - Light Theme
  static const Color lightTextPrimary = Color(0xFF2D2D2D);
  static const Color lightTextSecondary = Color(0xFF757575);
  static const Color lightTextTertiary = Color(0xFFB8B8B8);

  // Text Colors - Dark Theme
  static const Color darkTextPrimary = Color(0xFFFFFFFF); // Pure white
  static const Color darkTextSecondary = Color(0xFFB8B8B8); // Light gray
  static const Color darkTextTertiary = Color(0xFF757575); // Medium gray

  // Border Colors
  static const Color lightBorder = Color(0xFFE0E0E0);
  static const Color darkBorder = Color(0xFF3A3A3A);

  // Shadow Colors
  static const Color lightShadow = Color(0x1A000000);
  static const Color darkShadow = Color(0x40000000);

  // Special UI Colors
  static const Color buttonPrimary = Color(0xFFFFFFFF); // White button
  static const Color buttonOnPrimary = Color(0xFF2D2D2D); // Dark text on button
  static const Color cardBackground = Color(0xFF2D2D2D);
  static const Color priceColor = Color(0xFFFFFFFF);
  static const Color discountColor = Color(0xFFFF6B6B);
}
