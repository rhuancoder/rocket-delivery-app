//
//  StoreItemView.swift
//  RocketDelivery
//
//  Created by Rhuan Carvalho on 29/03/24.
//

import SwiftUI

struct StoreItemView: View {
    
    let store: StoreType
    
    var body: some View {
        HStack {
            Image(store.logoImage)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            
            Text(store.name)
                .font(.subheadline)
            
            Spacer()
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    StoreItemView(store: storesMock[0])
}
