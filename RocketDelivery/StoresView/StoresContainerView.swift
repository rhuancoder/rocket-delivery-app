//
//  StoresContainerView.swift
//  RocketDelivery
//
//  Created by Rhuan Carvalho on 29/03/24.
//

import SwiftUI

struct StoresContainerView: View {
    
    let title = "Stores"
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
            
            VStack(alignment: .leading, spacing: 30) {
                ForEach(storesMock) { store in
                    NavigationLink {
                        StoreDetailView(store: store)
                    } label: {
                        StoreItemView(order: store)
                    }
                }
            }
            .foregroundColor(.black)
        }
        .padding(20)
    }
}

#Preview {
    StoresContainerView()
        .previewLayout(.sizeThatFits)
}
