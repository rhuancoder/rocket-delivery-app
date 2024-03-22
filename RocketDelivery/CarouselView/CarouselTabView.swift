//
//  CarouselTabView.swift
//  RocketDelivery
//
//  Created by Rhuan Carvalho on 22/03/24.
//

import SwiftUI

struct CarouselTabView: View {
    
    let orders: [OrderType] = [
        OrderType(id: 1, name: "barbecue banner", image: "barbecue-banner"),
        OrderType(id: 2, name: "brazilian meal banner", image: "brazilian-meal-banner"),
        OrderType(id: 3, name: "pokes banner", image: "pokes-banner")
    ]
    
    var body: some View {
        TabView {
            ForEach(orders) { order in
                CarouselItemView(order: order)
            }
        }
    }
}

#Preview {
    CarouselTabView()
}
