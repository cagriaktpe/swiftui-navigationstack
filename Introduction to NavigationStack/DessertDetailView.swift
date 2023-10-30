//
//  DessertDetailView.swift
//  Introduction to NavigationStack
//
//  Created by Samet Çağrı Aktepe on 30.10.2023.
//

import SwiftUI

struct DessertDetailView: View {
    
    let dessert: Dessert
    
    var body: some View {
        List {
            
            Section {
                LabeledContent("Icon", value: dessert.name)
                LabeledContent("Name", value: dessert.title)
                LabeledContent {
                    Text(dessert.price,
                         format: .currency(code: Locale.current.currency?.identifier ?? ""))
                } label: {
                    Text("Price")
                }
                LabeledContent("Cold?", value: dessert.isCold ? "✅" : "❌")
            }
            
            Section("Description") {
                Text(dessert.description)
            }

        }
        .navigationTitle("Item")
    }
}

#Preview {
    DessertDetailView(dessert: desserts[0])
}
