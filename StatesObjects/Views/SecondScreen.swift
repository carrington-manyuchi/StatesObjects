//
//  SecondScreen.swift
//  StatesObjects
//
//  Created by Manyuchi, Carrington C on 2024/09/03.
//

import SwiftUI

struct SecondScreen: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            VStack {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .foregroundStyle(.white)
                        .bold()
                }
            }
        }
    }
}
#Preview {
    SecondScreen(fruitViewModel: FruitViewModel())
}
