//
//  OrderTypeGridView.swift
//  RocketDelivery
//
//  Created by Rhuan Carvalho on 13/03/24.
//

import SwiftUI

struct OrderTypeGridView: View {
    
    let orders = ["Restaurants", "Drugstore", "Discounts", "Gourmet", "Markets", "Pet", "Drinks"]
    
    var body: some View {
        LazyHGrid(rows: [
            GridItem(.fixed(100)),
            GridItem(.fixed(100))
        ]) {
            ForEach(orders, id: \.self) { orderItem in
                Text(orderItem)
            }
        }
    }
}

#Preview {
    OrderTypeGridView()
}
