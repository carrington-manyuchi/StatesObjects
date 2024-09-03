//
//  ContentView.swift
//  StatesObjects
//
//  Created by Manyuchi, Carrington C on 2024/09/03.
//

import SwiftUI



struct ContentView: View {
    
    @State var fruitArray: [FruitModel] = []
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(fruitArray) { fruit in
                    HStack {
                        Text("\(fruit.count)")
                            .foregroundStyle(.red)
                        Text(fruit.name)
                            .font(.headline)
                            .bold()
                    }
                }
                .onDelete(perform: deleteFruit(index:))
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Fruit List")
            .onAppear {
                getFruits()
            }
        }
    }
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Orange", count: 1)
        let fruit2 = FruitModel(name: "Banana", count: 2)
        let fruit3 = FruitModel(name: "Watermelon", count: 88)
        let fruit12 =   FruitModel(name: "Apples", count: 5)
        
        fruitArray.append(fruit1)
        fruitArray.append(fruit2)
        fruitArray.append(fruit3)
        fruitArray.append(fruit12)
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}

#Preview {
    ContentView()
}



struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}
