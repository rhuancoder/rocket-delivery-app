//
//  ProductDetailQuantityView.swift
//  RocketDelivery
//
//  Created by Rhuan Carvalho on 23/04/24.
//

import SwiftUI

struct ProductDetailQuantityView: View {
    
    @State private var productQuantity = 1
    
    var body: some View {
        VStack(spacing: 16) {
            Text("Quantity")
                .font(.title3)
                .bold()
            
            HStack {
                Button {
                    if productQuantity > 1 {
                        productQuantity -= 1
                    }
                } label: {
                    Image(systemName: "minus.circle.fill")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                    
                }
                
                Text("\(productQuantity)")
                    .font(.title2)
                    .bold()
                
                Button {
                    productQuantity += 1
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                    
                }
            }
        }
    }
}

#Preview {
    ProductDetailQuantityView()
}
