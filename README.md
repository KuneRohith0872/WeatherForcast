**Weather Forecast App**

**Overview**

This is a simple iOS application built with Swift and SwiftUI that displays the current weather and a 3-day forecast for a location. The app allows users to enter a city name to retrieve weather data or use their current location to fetch weather information automatically.

**Features**

Search weather by city name.
Fetch weather data based on the user's current location.
Display current weather details including temperature, weather condition, and humidity.
Show a 3-day weather forecast.

**Requirements**

1) Xcode 12.0 or later
2) iOS 14.0 or later
3) Swift 5.0 or later

**Installation**

**Clone the Repository**

git clone https://github.com/KuneRohith0872/WeatherForcast

Open the Project
Open the WeatherForecastApp.xcodeproj file in Xcode.

**Swift Package Dependencies**
The project uses Combine for reactive programming. Make sure to update your packages in Xcode:

**Open your project in Xcode.**

> Go to File > Swift Packages > Update to Latest Package Versions.
> Run the Project
> Select the target device or simulator.
> Click the Run button or press Cmd + R.

**Architecture**

The application follows the MVVM (Model-View-ViewModel) architectural pattern:

Model: Represents the weather data retrieved from the API.
View: SwiftUI views that display the UI components.
ViewModel: Manages the data for the views and handles the business logic.
Libraries Used
Combine: For managing asynchronous operations and binding the data to the views.
Core Location: For fetching the user's current location.
Project Structure

WeatherForecastApp/
Models/: Contains the data models for the weather API responses.
ViewModels/: Contains the view models that handle data logic and binding.
Views/: Contains the SwiftUI views for the user interface.
Services/: Contains the WeatherService class for making API calls.
LocationManager.swift: Handles location services using Core Location.

**Assumptions and Additional Features**

Weather API Key: The API key is hardcoded for simplicity. In a real-world application, it should be securely stored.
MockURLSession: A mock URL session is used in unit tests to simulate network responses.
Error Handling: Basic error handling is implemented to display error messages to the user.


**Usage**

Enter a City Name:

Type the city name in the search field and press enter.
The app will fetch and display the weather information for the entered city.

Ensure that you have an active internet connection to fetch weather data.
Location services must be enabled on your device to use the current location feature.

**Author**

Kune Rohith, kunarohith@gmail.com

**License**

This project is licensed under the MIT License.
