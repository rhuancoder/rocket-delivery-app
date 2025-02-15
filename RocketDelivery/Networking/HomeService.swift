//
//  HomeService.swift
//  RocketDelivery
//
//  Created by Rhuan Carvalho on 15/02/25.
//

import Foundation

struct HomeService {
    func fetchData() {
        guard let url = URL(string: "YOUR API URL") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                print(error.localizedDescription)
            }
            else if let data = data {
                let storeTypes = try? JSONDecoder().decode([StoreType].self, from: data)
                print(storeTypes ?? [])
            }
        }.resume()
    }
}
