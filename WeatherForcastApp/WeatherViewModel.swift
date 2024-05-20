//
//  WeatherViewModel.swift
//  WeatherForcastApp
//
//  Created by Kune Rohith on 27/02/1946 Saka.
//

import Foundation

import Combine

class WeatherViewModel: ObservableObject {
    @Published var city: String = ""
    @Published var currentWeather: WeatherResponse?
    @Published var errorMessage: String?
    @Published var isLoading: Bool = false
    
    private var cancellable: AnyCancellable?
    private let weatherService = WeatherService()
    
    func fetchWeather() {
        isLoading = true
        errorMessage = nil
        
        cancellable = weatherService.fetchWeather(for: city)
            .sink(receiveCompletion: { [weak self] completion in
                self?.isLoading = false
                switch completion {
                case .failure(let error):
                    //Error
                    print(error)
                    self?.errorMessage = error.localizedDescription
                case .finished:
                    break
                }
            }, receiveValue: { [weak self] weatherResponse in
                print(weatherResponse)
                self?.currentWeather = weatherResponse
            })
    }
}
