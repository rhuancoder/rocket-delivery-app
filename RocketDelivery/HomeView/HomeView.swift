//
//  HomeView.swift
//  RocketDelivery
//
//  Created by Rhuan Carvalho on 29/04/24.
//

import SwiftUI

struct HomeView: View {
    
    @State private var isAnimating = false
    
    var body: some View {
        VStack {
            Text("Rocket Delivery")
                .font(.system(size: 40))
                .fontWeight(.heavy)
                .foregroundColor(.colorRed)
                .opacity(isAnimating ? 1 : 0)
                .offset(y: isAnimating ? 0 : -40)
            
            Text("Order your food from the comfort of your own home.")
                .font(.title2)
                .padding()
                .multilineTextAlignment(.center)
                .foregroundColor(.black.opacity(0.7))
                .opacity(isAnimating ? 1 : 0)
                .offset(y: isAnimating ? 0 : -40)
            
            Spacer()
            
            
        }
        .onAppear {
            withAnimation(.easeInOut(duration: 1.5)) {
                isAnimating = true
            }
        }
    }
}

#Preview {
    HomeView()
}
