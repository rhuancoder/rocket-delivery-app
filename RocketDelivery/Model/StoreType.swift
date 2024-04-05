//
//  StoreType.swift
//  RocketDelivery
//
//  Created by Rhuan Carvalho on 04/04/24.
//

import Foundation

struct StoreType: Identifiable {
    let id: Int
    let name: String
    let logoImage: String
    let headerImage: String
    let location: String
    let stars: Int
    let products: [ProductType]
}
