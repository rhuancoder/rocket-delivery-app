//
//  StoresContainerView.swift
//  RocketDelivery
//
//  Created by Rhuan Carvalho on 29/03/24.
//

import SwiftUI

struct StoresContainerView: View {
    
    let title = "Stores"
    @State private var ratingFilter = 0
    var stores: [StoreType]
    
    var filteredStores: [StoreType] {
        return stores.filter { store in
            store.stars >= ratingFilter
        }
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                Text(title)
                    .font(.headline)
                
                Spacer()
                
                Menu("Filter") {
                    
                    Button {
                        ratingFilter = 0
                    } label: {
                        Text("Clean filter")
                    }
                    
                    Divider()

                    ForEach(1...5, id: \.self) { rating in
                        Button {
                            ratingFilter = rating
                        } label: {
                            rating > 1 ?
                                Text("\(rating) stars or more") :
                                Text("\(rating) star or more")
                        }

                    }
                }
                .foregroundColor(.black)
            }
            
            VStack(alignment: .leading, spacing: 30) {
                
                
                if filteredStores.isEmpty {
                    Text("No results found.")
                        .font(.title3)
                        .bold()
                        .foregroundColor(.colorRed)
                        .padding(.vertical, 32)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                }
                else {
                    
                    ForEach(filteredStores) { store in
                        NavigationLink {
                            StoreDetailView(store: store)
                        } label: {
                            StoreItemView(store: store)
                        }
                    }
                }
            }
            .foregroundColor(.black)
        }
        .padding(20)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    StoresContainerView(stores: storesMock)
}
