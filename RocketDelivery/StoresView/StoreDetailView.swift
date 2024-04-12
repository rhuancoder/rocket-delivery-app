//
//  StoreDetailView.swift
//  RocketDelivery
//
//  Created by Rhuan Carvalho on 03/04/24.
//

import SwiftUI

struct StoreDetailView: View {
    
    let store: StoreType
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(store.headerImage)
                .resizable()
                .scaledToFit()
            
            HStack {
                Text(store.name)
                    .font(.title)
                    .bold()
                
                Spacer()
                
                Image(store.logoImage)
            }
            .padding(.vertical, 8)
            .padding(.horizontal)
            
            HStack {
                Text(store.location)
                
                Spacer()
                
                ForEach(1...store.stars, id: \.self) { _ in
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                        .font(.caption)
                }
            }
            .padding(.vertical, 8)
            .padding(.horizontal)
            
            Text("Products")
                .font(.title2)
                .bold()
                .padding()
        }
        .navigationTitle(store.name)
    }
}

#Preview {
    StoreDetailView(store: storesMock[0])
}
