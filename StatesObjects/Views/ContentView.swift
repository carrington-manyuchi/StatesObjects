//
//  ContentView.swift
//  StatesObjects
//
//  Created by Manyuchi, Carrington C on 2024/09/03.
//

import SwiftUI


struct ContentView: View {
    
    //MARK: - @StateObject: use this on creating / init
    //MARK: - @ObservableObject: use this for subviews / when passing data to second view
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundStyle(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit(index:))
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Fruit List")
            .navigationBarItems(trailing:
                                    NavigationLink(destination: SecondScreen(fruitViewModel: fruitViewModel),
                                                   label:  {
                Image(systemName: "arrow.right")
                    .font(.title)
            })
            )
//            .onAppear {
//                fruitViewModel.getFruits()
//            }
        }
    }
}

#Preview {
    ContentView()
}
