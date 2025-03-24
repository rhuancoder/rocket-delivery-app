//
//  ProductDetailButtonView.swift
//  RocketDelivery
//
//  Created by Rhuan Carvalho on 23/04/24.
//

import SwiftUI

struct ProductDetailButtonView: View {
    
    var onButtonPressed: () -> Void
    
    var body: some View {
        Button {
            onButtonPressed()
        } label: {
            HStack {
                Image(systemName: "cart")
                
                Text("Send order")
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
    ProductDetailButtonView(onButtonPressed: {print("product")})
}
