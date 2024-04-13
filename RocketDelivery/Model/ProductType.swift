//
//  ProductType.swift
//  RocketDelivery
//
//  Created by Rhuan Carvalho on 04/04/24.
//

import Foundation

struct ProductType: Identifiable {
    let id: Int
    let name: String
    let description: String
    let image: String
    let price: Double
    
    var formattedPrice: String {
        return "R$ " + price.formatPrice()
    }
}
