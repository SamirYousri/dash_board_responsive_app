# Dashboard Responsive App

## Overview
The **Dashboard Responsive App** is a Flutter project that provides a responsive admin dashboard interface, suitable for various screen sizes including mobile, tablet, and desktop. This project is a great example of how to create a responsive and adaptive UI using Flutter.

## Features
- **Responsive Design**: Adjusts seamlessly to different screen sizes.
- **Sidebar Navigation**: Easily navigate between different sections of the dashboard.
- **Charts and Graphs**: Visual representation of data using various chart types.
- **User Management**: Interface for managing users within the dashboard.
- **Dark and Light Mode**: Supports both dark and light themes.

## Technologies Used
- **Flutter**: Cross-platform UI toolkit for building natively compiled applications.
- **Responsive Design**: Custom responsive widgets and layouts.
- **Provider/Bloc**: State management.
- **Dio**: For handling HTTP requests (if applicable).
- **Charts Package**: To display various charts (if applicable).

## Getting Started

### Prerequisites
- Ensure you have Flutter installed. You can follow the official [Flutter installation guide](https://flutter.dev/docs/get-started/install).

### Installation
1. Clone the repository:
    ```bash
    git clone https://github.com/SamirYousri/dash_board_responsive_app.git
    ```
2. Navigate to the project directory:
    ```bash
    cd dash_board_responsive_app
    ```
3. Install the necessary dependencies:
    ```bash
    flutter pub get
    ```
4. Run the app:
    ```bash
    flutter run
    ```

### Project Structure
```plaintext
lib/
├── main.dart                # Entry point of the app
├── core/                    # Core utilities and helpers
├── data/                    # Data sources and models
├── ui/                      # Widgets and UI components
├── screens/                 # Screen widgets
└── widgets/                 # Custom widgets
