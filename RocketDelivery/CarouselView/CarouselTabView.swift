//
//  CarouselTabView.swift
//  RocketDelivery
//
//  Created by Rhuan Carvalho on 22/03/24.
//

import SwiftUI

struct CarouselTabView: View {
    
    @State private var currentIndex = 1
    
    let orders: [OrderType] = [
        OrderType(id: 1, name: "barbecue banner", image: "barbecue-banner"),
        OrderType(id: 2, name: "brazilian meal banner", image: "brazilian-meal-banner"),
        OrderType(id: 3, name: "pokes banner", image: "pokes-banner")
    ]
    
    var body: some View {
        TabView(selection: $currentIndex) {
            ForEach(orders) { order in
                CarouselItemView(order: order)
                    .tag(order.id)
            }
        }
        .frame(height: 180)
        .tabViewStyle(.page(indexDisplayMode: .always))
        .onAppear {
            Timer.scheduledTimer(withTimeInterval: 3, repeats: true) {
                _ in
                withAnimation(.easeInOut(duration: 1)) {
                    if currentIndex > orders.count {
                        currentIndex = 1
                    }
                    currentIndex += 1
                }
            }
        }
    }
}

#Preview {
    CarouselTabView()
}
