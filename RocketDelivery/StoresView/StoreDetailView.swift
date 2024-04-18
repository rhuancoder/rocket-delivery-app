//
//  StoreDetailView.swift
//  RocketDelivery
//
//  Created by Rhuan Carvalho on 03/04/24.
//

import SwiftUI

struct StoreDetailView: View {
    
    let store: StoreType
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView(showsIndicators: false) {
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
                
                ForEach(store.products) { product in
                    
                    NavigationLink {
                        ProductDetailView(product: product)
                    } label: {
                        HStack(spacing: 8) {
                            VStack(alignment: .leading, spacing: 8) {
                                Text(product.name)
                                    .bold()
                                
                                Text(product.description)
                                    .foregroundColor(.black.opacity(0.5))
                                    .multilineTextAlignment(.leading)
                                
                                Text(product.formattedPrice)
                            }
                            
                            Spacer()
                            
                            Image(product.image)
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(12)
                                .frame(width: 120, height: 120)
                                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.3), radius: 20, x: 6, y: 8)
                        }
                        .padding()
                        .foregroundColor(.black)
                    }
                }
            }
            .navigationTitle(store.name)
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button{
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        HStack(spacing: 4) {
                            Image(systemName: "cart")
                            
                            Text("Stores")
                        }
                        .foregroundColor(.colorRed)
                    }
                }
            }
        }
    }
}

#Preview {
    StoreDetailView(store: storesMock[0])
}
