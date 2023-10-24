# Weather Forecast App

Welcome to the Weather Forecast App, your ultimate weather companion. This README provides a comprehensive guide to the app, its features, installation process, and usage instructions.

## Table of Contents
1. [Introduction](#introduction)
2. [Features](#features)
3. [How to Run My Weather Forecast App](#How_to_Run_My_Weather_Forecast_App)
4. [Technical Details](#Technical_Details)
5. [Screenshots](#screenshots)
6. [Contributing](#contributing)


## Introduction

The Weather Forecast App is designed to help you stay informed about current and upcoming weather conditions. Whether you're planning a trip, checking the daily forecast, or looking for weather alerts, this app has you covered.

## Features

- **Current Weather:** Get real-time weather information, including temperature, humidity, wind speed, and conditions.
- **5-Day Forecast:** Plan your week with a detailed 5-day weather forecast.
- **Location-Based Forecast:** Instantly fetch weather data for your current location.

##  How to Run My Weather Forecast App

To run the Weather Forecast App built with Flutter, please follow the steps below:

1. **API Key Subscription**:
   - Go to [OpenWeatherMap API](https://openweathermap.org/api).
   - Sign up for an account or log in if you already have one.
   - Once logged in, subscribe to the "One Call API 3.0" service.

2. **API Key Configuration**:
   - In your Flutter project directory, find the `api_key.dart` file.
   - Open the `api_key.dart` file using your preferred code editor.
   - Replace the placeholder `"YOUR_API_KEY_HERE"` with your actual API key that you obtained from OpenWeatherMap.

   ```dart
   const String apiKey = "YOUR_API_KEY_HERE";

3. **Project Setup**:
   - Open your terminal or command prompt.
   - Navigate to your Flutter project directory using the cd command.
     
4. **Clean the Project**:
   - Run the following command to clean the project and remove any cached files:
   ```dart
   flutter clean

4. **Install Dependencies**:
   - After cleaning, run the following command to install the project's dependencies:
   ```dart
   flutter pub get

4. **Run the App**:
   - Finally, run the app using the following command:
   ```dart
   flutter run

The Weather Forecast App should now be up and running on your local development environment. You can access it on your Android or iOS emulator or a physical device connected to your computer.
If you encounter any issues or have questions, feel free to reach out for assistance. Enjoy using the Weather Forecast App!

## Technical Details

The Weather Forecast App is built with the Dart programming language and utilizes the Flutter framework for its development. The app also leverages the GetX state management library to manage and update its user interface efficiently.

## Screenshots



https://github.com/CodeCrypt05/weather-forecast-app/assets/61696855/5ee59a79-76d6-47af-9ec5-07e09c98bfa5



## Contributing

If you'd like to contribute to this project, please follow these steps:

- Fork the repository on GitHub.
- Create a new branch for your feature or bug fix.
- Make your changes and commit them.
- Push your changes to your fork.
- Submit a pull request to the original repository.


