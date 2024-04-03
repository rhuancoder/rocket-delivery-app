//
//  StoreDetailView.swift
//  RocketDelivery
//
//  Created by Rhuan Carvalho on 03/04/24.
//

import SwiftUI

struct StoreDetailView: View {
    
    let store: OrderType
    
    var body: some View {
        Text(store.name)
    }
}

#Preview {
    StoreDetailView(store: storesMock[0])
}
