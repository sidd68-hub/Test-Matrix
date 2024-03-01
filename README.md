# Matrix 2D Array Grid

A Flutter app for managing a 2D array matrix.

## Overview

This Flutter application allows users to interact with a 2D array matrix. Users can input data into the matrix, navigate between screens, and search for specific characters within the matrix.

## Screen Recording

![](https://github.com/sidd68-hub/Test-Matrix/blob/main/assets/gif/howItWork.gif)


## How it Works

The application follows these steps:

- Splash Screen: Displays a splash screen for 3 seconds before redirecting to the input screen.
- Input Screen: Users input the number of rows (m) and columns (n) for the matrix. Once confirmed, users are redirected to the matrix screen.
- Matrix Screen: Users fill in each cell of the matrix with a single character. Autofocus moves to the next cell once a character is entered. After completing the matrix, users can continue to the result screen.
- Result Screen: Displays the filled matrix. Users can search for specific characters within the matrix using the search field. Matches are highlighted in yellow. Users can also reset the process.

## Installation

To run the application locally, follow these steps:

1. Clone the repository:
   git clone https://github.com/sidd68-hub/Test-Matrix.git
2. Navigate to the project directory:
   cd Test-Matrix
3. Run the app:
   flutter run
       



## Release APK
You can download the latest release APK from here.
[Download APK](https://github.com/sidd68-hub/Test-Matrix/raw/main/assets/apk/app-release.apk)


## Technologies Used

- Flutter
- Dart
- GetX State Management
