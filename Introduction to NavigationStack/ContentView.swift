//
//  ContentView.swift
//  Introduction to NavigationStack
//
//  Created by Tunde Adegoroye on 03/02/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            
            List {
                Section("Foods") {
                    ForEach(foods) { food in
                        NavigationLink(value: food) {
                            MenuItemView(item: food)
                        }
                    }
                }
                
                Section("Drinks") {
                    ForEach(drinks) { drink in
                        NavigationLink(value: drink) {
                            MenuItemView(item: drink)
                        }
                    }
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Menu")
            .navigationDestination(for: Food.self) { item in
                FoodDetailView(food: item)
            }
            .navigationDestination(for: Drink.self) { item in
                DrinkDetailView(drink: item)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
