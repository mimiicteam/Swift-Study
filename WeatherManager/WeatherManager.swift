struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=ba74a42450d6bd6c2ca3a59579467cb6&units=metric"

    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&\(cityName)"
        print(urlString)
    }

    func performRequest(urlString: String) {
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url, completionHandler: handler(data: response: error: ))
            task.resume()
        }
    }

    func handler(data: Data?, response: URLResponse?, error: Error?) {
        if error != nil {
            print("Error: \(error!.localizedDescription)")
            return
        }

        if let safeData = data {
            let dataString = String(data: safeData, encoding: .utf8)
        }
    }
    
}

