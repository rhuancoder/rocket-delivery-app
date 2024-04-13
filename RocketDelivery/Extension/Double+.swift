//
//  Double+.swift
//  RocketDelivery
//
//  Created by Rhuan Carvalho on 13/04/24.
//

import Foundation

extension Double {
    func formatPrice() -> String {
        let formattedString = String(format: "%.2f", self)
        return formattedString.replacingOccurrences(of: ".", with: ",")
    }
}
