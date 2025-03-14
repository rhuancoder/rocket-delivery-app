//
//  ContentView.swift
//  RocketDelivery
//
//  Created by Rhuan Carvalho on 11/03/24.
//

import SwiftUI

struct ContentView: View {
    private var service = HomeService()
    @State private var storeTypes: [StoreType] = []
    
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
            Task {
                await getStores()
            }
        }
    }
    
    // MARK: - Methods
    
    func getStores() async {
        do {
            let result = try await service.fetchData()
            switch result {
            case .success(let stores):
                self.storeTypes = stores
            case .failure(let error):
                print(error.localizedDescription)
            }
        } catch {
            print(error.localizedDescription)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ContentView()
}
