//
//  FruitModel.swift
//  StatesObjects
//
//  Created by Manyuchi, Carrington C on 2024/09/03.
//

import Foundation

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}
