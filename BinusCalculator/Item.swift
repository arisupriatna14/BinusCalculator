//
//  Item.swift
//  BinusCalculator
//
//  Created by Ari Supriatna on 28/04/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var expressions: [String]
    var timestamp: Date
    
    init(expressions: [String], timestamp: Date) {
        self.expressions = expressions
        self.timestamp = timestamp
    }
}
