# 📱 Flutter Firebase Chat App

A simple, real-time chat application built with **Flutter**, **Firebase Authentication**, and **Cloud Firestore**.  
It supports **user registration, login, real-time messaging**, and **dark mode**.

---

## 🚀 Features

- **User Authentication**
  - Sign up and log in using email and password.
  - Firebase Authentication for secure sign-in.

- **Real-Time Messaging**
  - Send and receive messages instantly via Firestore.
  - Messages are aligned left/right depending on sender.

- **User List**
  - View a list of registered users (excluding yourself).
  - Tap on a user to start chatting.

- **Dark Mode Support**
  - Toggle between light and dark themes via settings.

- **Persistent Login**
  - Auth state is preserved using Firebase’s auth state stream.

---

## 🛠 Tech Stack

- **Framework**: [Flutter](https://flutter.dev/)
- **Backend**: [Firebase Authentication](https://firebase.google.com/docs/auth), [Cloud Firestore](https://firebase.google.com/docs/firestore)
- **State Management**: [Provider](https://pub.dev/packages/provider)
- **UI**: Material Design & Cupertino Widgets

---

## 📂 Project Structure

```
lib/
├── components/
│   ├── chat_bubble.dart
│   ├── my_button.dart
│   ├── my_drawer.dart
│   ├── my_textfield.dart
│   └── user_tile.dart
├── pages/
│   ├── auth_gate.dart
│   ├── chat_page.dart
│   ├── home_page.dart
│   ├── login_page.dart
│   ├── register_page.dart
│   └── settings_page.dart
├── services/
│   ├── auth/
│   │   ├── auth_service.dart
│   │   ├── chat/
│   │   │   └── chat_service.dart
│   │   └── login_or_register.dart
├── themes/
│   └── theme_provider.dart
```

---

## 📸 Screenshots

| Login Page | Chat Page | Settings |
|------------|-----------|----------|
| ![Login Screenshot](docs/login.png) | ![Chat Screenshot](docs/chat.png) | ![Settings Screenshot](docs/settings.png) |

---

## 🔧 Installation & Setup

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/flutter-firebase-chat.git
   cd flutter-firebase-chat
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Set up Firebase**
   - Create a new Firebase project at [Firebase Console](https://console.firebase.google.com/).
   - Enable **Email/Password Authentication** in Firebase Authentication.
   - Create a **Cloud Firestore** database in **test mode**.
   - Download `google-services.json` (for Android) and `GoogleService-Info.plist` (for iOS) and add them to your project.

4. **Run the app**
   ```bash
   flutter run
   ```

---

## 📌 How It Works

- **Login & Registration**
  - Users can register with an email & password.
  - Upon registration, their info is stored in the `Users` Firestore collection.

- **User List & Chat**
  - The home screen displays all registered users (except yourself).
  - Clicking on a user navigates to a dedicated chat screen.
  - Messages are stored in a Firestore subcollection.

- **Dark Mode**
  - Uses `Provider` to toggle between light and dark themes in settings.

---

## 📜 License
This project is licensed under the **MIT License**. Feel free to use and modify it for your own projects.


