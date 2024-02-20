//
//  ReceipDetailViewModel.swift
//  Pirate_Meal
//
//  Created by Danny Dauck on 19.02.24.
//

import Foundation


class ReceipDetailViewModel: ObservableObject{
    
    @Published var title: String
    @Published var id: Int
    @Published var image: String
    @Published var instruction: String = ""
    @Published var ingredients: [Ingredient] = []
    
    init(receip: Receip){
        self.id = receip.id
        self.title = receip.title
        self.image = receip.image
        loadDetails()
    }
    
    
    func addIngredientsToShoppingList(){
        
        
        //TODO
    }
    
    
    func loadDetails(){
        
        //TODO Dummydaten ersetzen
        self.instruction = "Fang endlich an zu kochen du faule Sau"
        self.ingredients = [
            Ingredient(name: "Olivenöl", amount: 500, unit: "ml"),
            Ingredient(name: "Basilikum", amount: 1, unit: "Bund"),
            Ingredient(name: "Knoblauch", amount: 2, unit: "Zehen")
        ]
    }
}
