# New Project

A Flutter application with comprehensive theme system, state management, and organized architecture.

## ✨ Features

- 🎨 **Beautiful Theme System** - Fully customized light and dark themes with Material 3
- 📱 **Responsive Design** - ScreenUtil integration for perfect scaling across devices
- 🔄 **State Management** - Provider for theme management (GetX included for routing)
- 🎯 **Clean Architecture** - Organized folder structure with extensions and utilities
- 🌈 **Rich Color Palette** - Carefully crafted color schemes for both themes
- ⚡ **Performance Optimized** - Lightweight and efficient code structure

## 📦 Packages

- [get](https://pub.dev/packages/get) (^4.6.6) - State management and navigation
- [provider](https://pub.dev/packages/provider) (^6.1.2) - State management
- [flutter_screenutil](https://pub.dev/packages/flutter_screenutil) (^5.9.3) - Responsive UI

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (3.10.0 or higher)
- Dart SDK
- Android Studio / VS Code
- Android / iOS Emulator or Physical Device

### Installation

1. Clone the repository

```bash
git clone https://github.com/yourusername/new_project.git
cd new_project
```

2. Install dependencies

```bash
flutter pub get
```

3. Run the app

```bash
flutter run
```

## 📁 Project Structure

```
lib/
├── core/
│   ├── theme/
│   │   ├── app_colors.dart          # Color palette
│   │   └── app_theme.dart           # Light & Dark themes
│   ├── utils/
│   │   ├── app_constants.dart       # App constants
│   │   └── image_assets.dart        # Image paths
│   ├── extensions/
│   │   ├── string_extensions.dart   # String utilities
│   │   ├── context_extensions.dart  # Context utilities
│   │   ├── datetime_extensions.dart # DateTime utilities
│   │   └── number_extensions.dart   # Number utilities
│   └── providers/
│       └── theme_provider.dart      # Theme state management
└── main.dart

assets/
└── images/                          # Image assets
```

## 🎨 Theme System

### Light & Dark Themes

The app features a complete theme system with:

- Custom color palettes
- Typography system (Display, Headline, Title, Body, Label)
- Styled components (Buttons, Cards, Inputs, AppBar, etc.)
- Automatic responsive sizing

### Theme Switching

```dart
// Toggle between themes
final themeProvider = Provider.of<ThemeProvider>(context);
themeProvider.toggleTheme();

// Set specific theme
themeProvider.setLightTheme();
themeProvider.setDarkTheme();
themeProvider.setSystemTheme();
```

## 🛠️ Extensions

### String Extensions

```dart
'hello world'.capitalize;           // 'Hello world'
'email@test.com'.isValidEmail;      // true
'Long text'.truncate(5);            // 'Long ...'
```

### Context Extensions

```dart
context.primaryColor;                // Get theme color
context.push(MyPage());              // Navigate
context.showSnackBar('Message');     // Show snackbar
context.screenWidth;                 // Get screen width
context.isMobile;                    // Check device type
```

### DateTime Extensions

```dart
DateTime.now().formattedDate;        // '27/01/2026'
DateTime.now().timeAgo;              // '2 hours ago'
DateTime.now().isToday;              // true
```

### Number Extensions

```dart
1234.formatted;                      // '1,234'
99.99.toCurrency();                  // '$99.99'
75.5.toPercentage();                 // '75.5%'
```

## 📱 Responsive Design

Using ScreenUtil for perfect scaling:

```dart
Container(
  width: 200.w,                      // Responsive width
  height: 100.h,                     // Responsive height
  padding: EdgeInsets.all(16.w),
  child: Text(
    'Text',
    style: TextStyle(fontSize: 16.sp), // Responsive font
  ),
);
```

## 🎯 Usage

### Adding New Providers

```dart
MultiProvider(
  providers: [
    ChangeNotifierProvider(create: (_) => ThemeProvider()),
    ChangeNotifierProvider(create: (_) => YourProvider()),
  ],
  child: const MyApp(),
)
```

### Adding Images

1. Place images in `assets/images/` folder
2. Update `image_assets.dart` with image paths
3. Use in your widgets:

```dart
Image.asset(ImageAssets.logo)
```

## 🌈 Color Palette

- **Primary**: Purple (#6C63FF)
- **Secondary**: Pink (#FF6584)
- **Accent**: Cyan (#00D9FF)
- **Success**: Green (#28A745)
- **Warning**: Yellow (#FFC107)
- **Error**: Red (#DC3545)

## 📝 Constants

All app constants are centralized in `app_constants.dart`:

- API configuration
- Storage keys
- Validation rules
- Error messages
- Date formats

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 👨‍💻 Author

Your Name - [@yourusername](https://github.com/yourusername)

## 🙏 Acknowledgments

- Flutter Team for the amazing framework
- All contributors and package maintainers
- Material Design team for design guidelines

---

Made with ❤️ using Flutter
