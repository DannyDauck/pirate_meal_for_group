//
//  Ingredient.swift
//  Pirate_Meal
//
//  Created by Danny Dauck on 20.02.24.
//

import Foundation

struct Ingredient: Identifiable{
    
    let id =  UUID()
    let name : String
    let amount: Double
    let unit: String
    
}
