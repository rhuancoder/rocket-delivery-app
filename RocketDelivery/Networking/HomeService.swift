//
//  HomeService.swift
//  RocketDelivery
//
//  Created by Rhuan Carvalho on 15/02/25.
//

import Foundation

enum RequestError: Error {
    case invalidURL
    case errorRequest(error: String)
}

struct HomeService {
    func fetchData() async throws -> Result<[StoreType], RequestError> {
        guard let url = URL(string: "YOUR API URL") else {
            return .failure(.invalidURL)
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        let (data, _) = try await URLSession.shared.data(for: request)
        let storeTypes = try JSONDecoder().decode([StoreType].self, from: data)
        
        return .success(storeTypes)
    }
}

//        URLSession.shared.dataTask(with: url) { data, _, error in
//            if let error = error {
//                print(error.localizedDescription)
//            }
//            else if let data = data {
//                let storeTypes = try? JSONDecoder().decode([StoreType].self, from: data)
//                print(storeTypes ?? [])
//            }
//        }.resume()
