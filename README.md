# Spotify Demo Documentation

## Overview
This Flutter app is a small yet efficient project designed to showcase the power of GetX for state management, routing, and dependency injection. The app ensures minimal boilerplate code and a streamlined architecture, making it a great starting point for small to medium-sized applications.

### Key Features
- **GetX for State Management**: Simplifies state handling, routing, and dependency injection.
- **Pagination**: Dynamically loads data for an enhanced user experience.
- **Token Management**: Automatically generates an access token only when it has expired, ensuring seamless API interactions.

---

## Getting Started

### Prerequisites
Ensure you have the following installed:
- [Flutter SDK](https://docs.flutter.dev/get-started/install) (latest stable version)
- [Dart SDK](https://dart.dev/get-dart)
- An IDE of your choice (e.g., [Android Studio](https://developer.android.com/studio) or [VS Code](https://code.visualstudio.com/))

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/your-repository-name.git
   cd your-repository-name
   ```

2. Get the dependencies:
   ```bash
   flutter pub get
   ```

3. Run the app:
   ```bash
   flutter run
   ```

---

## Project Structure
The app follows a clean and scalable architecture leveraging GetX.

### Directory Layout
```plaintext
lib/
├── controllers/       # Business logic controllers (GetX controllers)
├── views/             # UI components and pages
├── models/            # Data models
├── services/          # API calls and utility services
├── bindings/          # Dependency injection bindings
├── routes/            # Route definitions and management
└── utils/             # Helper functions and constants
```

---

## Features and Improvements

### Pagination
The app currently implements a basic pagination mechanism. However, the following refinements are planned:
- Enhance performance for large datasets.
- Improve error handling during data loading.
- Add UI indicators for better user feedback.

### Access Token Management
- The app ensures tokens are generated only if the existing token has expired. This optimizes API calls and improves efficiency.

---

## Development Tools

### State Management: GetX
GetX has been chosen for this project because it:
- Simplifies state management, dependency injection, and routing.
- Reduces boilerplate code.

Using the Bloc Library would have been overkill given the project's scope.

---



## Acknowledgements
- [Flutter](https://flutter.dev/)
- [GetX](https://pub.dev/packages/get)

---

<img src="https://github.com/Lesruez93/spotify_demo/blob/f16f347d91de15aa1e0a787e378695120b7050d4/assets/screen%20demo.gif?raw=true" height="300">
