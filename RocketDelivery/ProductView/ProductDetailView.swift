//
//  ProductDetailView.swift
//  RocketDelivery
//
//  Created by Rhuan Carvalho on 18/04/24.
//

import SwiftUI

struct ProductDetailView: View {
    
    let product: ProductType
    
    var service = HomeService()
    
    var body: some View {
        VStack {
            ProductDetailHeaderView(product: product)
            
            Spacer()
            
            ProductDetailQuantityView()
            
            Spacer()
            
            ProductDetailButtonView {
                Task {
                    await confirmOrder()
                }
            }
        }
    }
    
    func confirmOrder() async {
        do {
            let result = try await service.confirmOrder(product: product)
            switch result {
            case .success(let message):
                print(message)
            case .failure(let error):
                print(error.localizedDescription)
            }
        } catch {
            print(error.localizedDescription)
        }
    }
}

#Preview {
    ProductDetailView(product: storesMock[0].products[0])
}
