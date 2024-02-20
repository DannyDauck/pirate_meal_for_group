//
//  ShoppingListItem.swift
//  Pirate_Meal
//
//  Created by Danny Dauck on 20.02.24.
//

import Foundation


struct ShoppingListItem: Identifiable{
    
    let id =  UUID()
    let name: String
    let quantity: Double
    let unit: String
    var checked: Bool
    
}
