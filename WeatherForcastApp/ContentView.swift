//
//  ContentView.swift
//  WeatherForcastApp
//
//  Created by Kune Rohith on 27/02/1946 Saka.
//

import SwiftUI


struct ContentView: View {
    
    @StateObject private var viewModel = WeatherViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Enter city name", text: $viewModel.city, onCommit: {
                    viewModel.fetchWeather()
                })
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                
                if viewModel.isLoading {
                    ProgressView("Loading...")
                        .padding()
                } else if let errorMessage = viewModel.errorMessage {
                    Text(errorMessage)
                        .foregroundColor(.red)
                        .padding()
                } else if let currentWeather = viewModel.currentWeather {
                    VStack {
                        Text("Current Weather in \(currentWeather.name)")
                            .font(.headline)
                        Text("Temperature: \(currentWeather.main.temp)°C")
                        Text("Feels like: \(currentWeather.main.feels_like)°C")
                        Text("Condition: \(currentWeather.weather.first?.description ?? "N/A")")
                        Text("Humidity: \(currentWeather.main.humidity)%")
                        Text("Wind Speed: \(currentWeather.wind.speed)m/s")
                    }
                    .padding()
                }
                
                Spacer()
            }
            .navigationTitle("Weather Forecast")
        }
    }
}

// Define a preview provider for your view
struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
