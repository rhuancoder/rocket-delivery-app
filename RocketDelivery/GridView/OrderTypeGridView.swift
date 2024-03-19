//
//  OrderTypeGridView.swift
//  RocketDelivery
//
//  Created by Rhuan Carvalho on 13/03/24.
//

import SwiftUI

struct OrderTypeGridView: View {
    
    var body: some View {
        LazyHGrid(rows: [
            GridItem(.fixed(100)),
            GridItem(.fixed(100))
        ]) {
            ForEach(ordersMock) { orderItem in
                Text(orderItem.name)
            }
        }
    }
}

#Preview {
    OrderTypeGridView()
}
