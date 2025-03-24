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
    
    func confirmOrder(product: ProductType) async throws -> Result<[String: Any]?, RequestError> {
        guard let url = URL(string: "YOUR API URL") else {
            return .failure(.invalidURL)
        }
        
        let encodedObject = try JSONEncoder().encode(product)
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = encodedObject
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let (data, _) = try await URLSession.shared.data(for: request)
        let message = try JSONSerialization.jsonObject(with: data) as? [String: Any]
        
        return .success(message)
    }
}
