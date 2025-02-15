//
//  ContentView.swift
//  RocketDelivery
//
//  Created by Rhuan Carvalho on 11/03/24.
//

import SwiftUI

struct ContentView: View {
    private var service = HomeService()
    
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
            service.fetchData()
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ContentView()
}
