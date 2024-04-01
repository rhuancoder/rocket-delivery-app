//
//  StoreItemView.swift
//  RocketDelivery
//
//  Created by Rhuan Carvalho on 29/03/24.
//

import SwiftUI

struct StoreItemView: View {
    
    let order: OrderType
    
    var body: some View {
        HStack {
            Image(order.image)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            
            Text(order.name)
                .font(.subheadline)
            
            Spacer()
        }
    }
}

#Preview {
    StoreItemView(order: OrderType(id: 1, name: "Monstro Burger", image: "monstro-burger-logo"))
        .previewLayout(.sizeThatFits)
}
