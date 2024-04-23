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
    
    var filteredStores: [StoreType] {
        return storesMock.filter { store in
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
                ForEach(filteredStores) { store in
                    NavigationLink {
                        StoreDetailView(store: store)
                    } label: {
                        StoreItemView(store: store)
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
