//
//  DrinkDetailView.swift
//  Introduction to NavigationStack
//
//  Created by Samet Çağrı Aktepe on 30.10.2023.
//

import SwiftUI

struct DrinkDetailView: View {
    let drink: Drink
    @State private var username = "Tarik"

    var body: some View {
        List {
            Section {
                LabeledContent("Icon", value: drink.name)
                LabeledContent("Name", value: drink.title)
                LabeledContent {
                    Text(drink.price,
                         format: .currency(code: Locale.current.currency?.identifier ?? ""))
                } label: {
                    Text("Price")
                }
                LabeledContent("Fizzy?", value: drink.isFizzy ? "✅" : "❌")
            }

            Section("Description") {
                Text(drink.description)
            }
        }
        .navigationTitle("Item")
    }
}

#Preview {
    DrinkDetailView(drink: drinks[0])
}
