//
//  ProductDetailButtonView.swift
//  RocketDelivery
//
//  Created by Rhuan Carvalho on 23/04/24.
//

import SwiftUI

struct ProductDetailButtonView: View {
    var body: some View {
        Button {
            print("The button has been pressed")
        } label: {
            HStack {
                Image(systemName: "cart")
                
                Text("Add to cart")
            }
            .padding(.horizontal, 32)
            .padding(.vertical, 16)
            .font(.title3)
            .bold()
            .background(.colorRed)
            .foregroundColor(.white)
            .cornerRadius(32)
            .shadow(color: .colorRedDark.opacity(0.5), radius: 10, x: 6, y: 8)
        }
    }
}


#Preview {
    ProductDetailButtonView()
}
