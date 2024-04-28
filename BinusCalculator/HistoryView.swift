//
//  HistoryView.swift
//  BinusCalculator
//
//  Created by Ari Supriatna on 28/04/24.
//

import SwiftUI
import SwiftData

struct HistoryView: View {
    @Query private var expressions: [Item]
    
    var body: some View {
        List {
            ForEach(expressions) { expression in
                VStack(alignment: .leading) {
                    Text(expression.expressions.joined())
                        .font(.headline)
                }
            }
        }
        .navigationTitle("History")
    }
}

#Preview {
    HistoryView()
}
