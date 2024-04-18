//
//  ProductDetailView.swift
//  RocketDelivery
//
//  Created by Rhuan Carvalho on 18/04/24.
//

import SwiftUI

struct ProductDetailView: View {
    
    let product: ProductType
    
    var body: some View {
        Text(product.name)
    }
}

#Preview {
    ProductDetailView(product: storesMock[0].products[0])
}
