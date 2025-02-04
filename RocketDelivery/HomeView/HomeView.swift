//
//  HomeView.swift
//  RocketDelivery
//
//  Created by Rhuan Carvalho on 29/04/24.
//

import SwiftUI

struct HomeView: View {
    
    @State private var isAnimating = false
    @State private var imageOffset: CGSize = .zero
    @State private var buttonOffset: CGFloat = 0
    let buttonHeight: CGFloat = 80
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                
                Circle()
                    .foregroundStyle(.colorRed)
                    .frame(width: isAnimating ? 200 : 0)
                    .position(x: isAnimating ? 50 : -50, y: isAnimating ? 100 : -100)
                    .blur(radius: 60)
                    .opacity(isAnimating ? 0.5 : 0)
                
                Circle()
                    .foregroundStyle(.colorRedDark)
                    .frame(width: isAnimating ? 200 : 0)
                    .position(
                        x: isAnimating ? geometry.size.width - 50 : geometry.size.width + 50,
                        y: isAnimating ? geometry.size.height - 50 : geometry.size.height + 50)
                    .blur(radius: 60)
                    .opacity(isAnimating ? 0.5 : 0)
                
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
                    
                    Image("image")
                        .resizable()
                        .scaledToFit()
                        .shadow(radius: 60)
                        .padding(isAnimating ? 32 : 92)
                        .opacity(isAnimating ? 1 : 0)
                        .offset(x: imageOffset.width, y: imageOffset.height)
                        .gesture(
                            DragGesture()
                                .onChanged({ gesture in
                                    withAnimation(.easeInOut(duration: 0.5)) {
                                        imageOffset = gesture.translation
                                    }
                                })
                                .onEnded({ _ in
                                    withAnimation(.easeInOut(duration: 0.5))  {
                                        imageOffset = .zero
                                    }
                                })
                        )
                    
                    ZStack {
                        Capsule()
                            .fill(.colorRed.opacity(0.2))
                        
                        Capsule()
                            .fill(.colorRed.opacity(0.2))
                            .padding(8)
                        
                        Text("Discover more")
                            .font(.title2)
                            .bold()
                            .foregroundStyle(.colorRedDark)
                            .offset(x: 20)
                        
                        HStack {
                            Capsule()
                                .fill(.colorRed)
                                .frame(width: buttonOffset + buttonHeight)
                            
                            Spacer()
                        }
                        
                        HStack {
                            ZStack {
                                Circle()
                                    .fill(.colorRed)
                                
                                Circle()
                                    .fill(.colorRedDark)
                                    .padding(8)
                                
                                Image(systemName: "chevron.right.2")
                                    .font(.system(size: 24))
                                    .bold()
                                    .foregroundStyle(.white)
                            }
                            
                            Spacer()
                        }
                        .offset(x: buttonOffset)
                        .gesture(
                            DragGesture()
                                .onChanged({ gesture in
                                    if gesture.translation.width >= 0 && buttonOffset <= (geometry.size.width - 60) - buttonHeight {
                                        withAnimation(.easeInOut(duration: 0.25)) {
                                            buttonOffset = gesture.translation.width
                                        }
                                    }
                                })
                                .onEnded({ _ in
                                    if buttonOffset > (geometry.size.width - 60) / 2 {
                                    }
                                    else {
                                        withAnimation(.easeInOut(duration: 0.25)) {
                                            buttonOffset = 0
                                        }
                                    }
                                })
                        )
                    }
                    .frame(width: geometry.size.width - 60,
                           height: buttonHeight)
                }
                .onAppear {
                    withAnimation(.easeInOut(duration: 4)) {
                        isAnimating = true
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
