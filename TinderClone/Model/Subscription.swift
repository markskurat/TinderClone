//
//  Subscription.swift
//  TinderClone
//
//  Created by Mark Skurat on 6/20/22.
//

import Foundation

struct Subscription: Identifiable {
    var id = UUID()
    
    var month: Int
    var monthlyCost: Double
    var totalCost: Double
    var savePercent: Int?
    var tagLine: TagLine = .none
    
    enum TagLine: String {
        case mostPopular = "MOST POPULAR"
        case bestValue = "BEST VALUE"
        case none
    }
}

extension Subscription {
    static let example = Subscription(
        month: 6,
        monthlyCost: 15.00,
        totalCost: 89.99,
        savePercent: 50,
        tagLine: .bestValue
        
    )
    
    static let example2 = Subscription(
        month: 3,
        monthlyCost: 15.00,
        totalCost: 59.99,
        savePercent: 3,
        tagLine: .mostPopular
        
    )
    
    static let example3 = Subscription(
        month: 1,
        monthlyCost: 29.99,
        totalCost: 29.99
    )
}
