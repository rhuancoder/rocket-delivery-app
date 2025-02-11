//
//  ContentView.swift
//  RocketDelivery
//
//  Created by Rhuan Carvalho on 11/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                NavigationBar()
                    .padding(.horizontal, 15)
                    .padding(.top, 10)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 20) {
                        OrderTypeGridView()
                        CarouselTabView()
                        StoresContainerView()
                    }
                }
            }
        }
        .onAppear {
            fetchData()
        }
    }
    
    // MARK: - Methods
    
    func fetchData() {
        guard let url = URL(string: "YOUR API URL HERE") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                print(error.localizedDescription)
            }
            else if let data = data {
                do {
                    let response = try JSONSerialization.jsonObject(with: data) as? [[String: Any]]
                    print(response)
                } catch {
                    print(error.localizedDescription)
                }
            }
        }.resume()
    }
}

#Preview {
    ContentView()
        .previewLayout(.sizeThatFits)
}
