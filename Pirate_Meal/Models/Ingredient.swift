//
//  Ingredient.swift
//  Pirate_Meal
//
//  Created by Danny Dauck on 20.02.24.
//

import Foundation

struct Ingredient: Codable, Identifiable {
    
    let id : Int
    let name : String
    let amount: Double
    let unit: String
    
}
