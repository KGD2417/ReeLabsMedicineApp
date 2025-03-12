# PillPal App

## Overview
PillPal is a Flutter-based mobile application designed to help users manage their medication schedules efficiently. The app provides reminders, tracking, and notifications to ensure users take their medications on time.

## Features
- **Medication Reminders**: Schedule and receive notifications for each medication.
- **Dosage Tracking**: Log doses and track medication history.
- **User Profiles**: Manage multiple user profiles for different medication needs.
- **Smart Alerts**: Get notified when it’s time to take medicine.
- **Dashboard Overview**: View upcoming medications and adherence statistics.

## Tech Stack
- **Framework**: Flutter (Dart)
- **State Management**: Provider / Riverpod (if applicable)
- **Local Storage**: SharedPreferences / Hive (for offline data persistence)
- **Notifications**: Flutter Local Notifications
- **UI Design**: Material Design with Flutter Widgets

## Installation & Setup
### Prerequisites
Ensure you have the following installed:
- **Flutter SDK** (latest stable version)
- **Dart**
- **Android Studio** or **VS Code** (with Flutter plugin)

### Clone the Repository
```sh
git clone https://github.com/yourusername/PillPalApp.git
cd PillPalApp
```

### Install Dependencies
```sh
flutter pub get
```

### Run the Application
```sh
flutter run
```

## Folder Structure
```
lib/
│── main.dart             # Entry point of the app
│── api/                  # API service handlers (if applicable)
│── models/               # Data models
│── providers/            # State management
│── screens/              # UI screens
│── widgets/              # Reusable components
│── utils/                # Utility functions
```

## Contributing
1. Fork the repository.
2. Create a new branch: `git checkout -b feature-branch`
3. Commit changes: `git commit -m 'Add new feature'`
4. Push to the branch: `git push origin feature-branch`
5. Open a Pull Request.

## License
This project is licensed under the MIT License.

## Contact
For any queries, contact kshitijdesai179@gmail.com.

