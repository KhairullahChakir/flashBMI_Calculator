# Flash BMI Calculator

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?logo=flutter&logoColor=white)](https://flutter.dev/)
[![Dart](https://img.shields.io/badge/Dart-3.x-0175C2?logo=dart&logoColor=white)](https://dart.dev/)

## 📖 Overview
**Flash BMI Calculator** is a clean, responsive, and cross-platform mobile application built using the Flutter framework. It provides users with a simple, intuitive interface to quickly calculate their Body Mass Index (BMI) based on their height and weight.

This project serves as an excellent demonstration of fundamental Flutter concepts including state management, custom widget building, cross-platform UI scaling, and Dart programming logic.

## ✨ Features
* **Instant Calculation**: Real-time BMI processing based on user inputs.
* **Custom UI Design**: Features a modern, aesthetically pleasing user interface distinct from default material templates.
* **Cross-Platform**: Compiles natively for both iOS and Android from a single codebase.
* **Health Insights**: Returns not just a raw number, but a categorized health assessment (e.g., Underweight, Normal, Overweight).

## 🚀 Technologies Used
* **Framework**: Flutter
* **Language**: Dart
* **Design System**: Material Design & Custom Widgets

## 📁 Project Structure
```text
flashBMI_Calculator/
├── android/            # Android-specific build files
├── ios/                # iOS-specific build files
├── lib/                # Main Dart source code
│   ├── main.dart       # Application entry point
│   └── ...             # Screen & Widget components
├── pubspec.yaml        # Flutter dependencies and assets configuration
├── .gitignore          # Flutter standard git ignores
├── LICENSE             # MIT License
└── README.md           # Project documentation
```

## 📸 Screenshots
*(Screenshots coming soon - placeholder for app interface)*

## 🛠️ Installation & Setup

### Prerequisites
* [Flutter SDK](https://docs.flutter.dev/get-started/install) installed and configured on your system.
* Android Studio / VS Code (with Flutter extensions).
* An emulator running, or a physical device connected.

### Steps
1. **Clone the repository**:
   ```bash
   git clone https://github.com/KhairullahChakir/flashBMI_Calculator.git
   cd flashBMI_Calculator
   ```

2. **Fetch dependencies**:
   ```bash
   flutter pub get
   ```

3. **Run the application**:
   ```bash
   flutter run
   ```

## 🔮 Future Improvements
* **Unit System Toggle**: Add support for both Metric (kg/cm) and Imperial (lbs/in) systems.
* **History Tracking**: Save previous calculations locally using `shared_preferences` or `sqflite`.
* **Animations**: Implement Hero animations for smoother screen transitions.

## 🤝 Contributing
Contributions, issues, and feature requests are welcome! Feel free to check the [issues page](../../issues).

## 📄 License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
