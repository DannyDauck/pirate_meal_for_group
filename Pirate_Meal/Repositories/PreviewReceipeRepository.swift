//
//  PreviewShoppingListRepository.swift
//  Pirate_Meal
//
//  Created by Vincent Neumann, Siahrrei Wehrhahn, Mike Reichenbach and Danny Dauck on 21.02.24.
//

import Foundation


class PreviewReceipeRepository{
    
    private var dummyData = [
        FullRecipe(id: 716429, title: "Pasta with Garlic, Scallions, Cauliflower & Breadcrumbs", image: "https://spoonacular.com/recipeImages/716429-312x231.jpg", instructions: "Kochen was das Zeug hält", extendedIngredients: [
            Ingredient(name: "Olivenöl", amount: 500, unit: "ml"),
            Ingredient(name: "Basilikum", amount: 1.5, unit: "Bund"),
            Ingredient(name: "Knoblauch", amount: 2, unit: "Zehen")
        ]),
        FullRecipe(id: 715538, title: "What to make for dinner tonight?? Bruschetta Style Pork & Pasta", image: "https://spoonacular.com/recipeImages/715538-312x231.jpg", instructions: "Kochen was das Zeug hält", extendedIngredients: [
            Ingredient(name: "Olivenöl", amount: 500, unit: "ml"),
            Ingredient(name: "Basilikum", amount: 1.5, unit: "Bund"),
            Ingredient(name: "Knoblauch", amount: 2, unit: "Zehen"),
            Ingredient(name: "Schweinefleisch", amount: 400, unit: "g"),
            Ingredient(name: "Pasta", amount: 300, unit: "g"),
            Ingredient(name: "Tomaten", amount: 3, unit: "Stück"),
            Ingredient(name: "Balsamico-Essig", amount: 2, unit: "EL")
        ])
        
        
    ]
    
    
    func searchReceipes()->SearchResult{
        
        
        //DummyDaten kommen später von der API
        .init(reults: [
            Receip(id: 716429, title: "Pasta with Garlic, Scallions, Cauliflower & Breadcrumbs", image: "https://spoonacular.com/recipeImages/716429-312x231.jpg"),
            Receip(id: 715538, title: "What to make for dinner tonight?? Bruschetta Style Pork & Pasta", image: "https://spoonacular.com/recipeImages/715538-312x231.jpg")
        ], total: 2)
    }
    
    func getFullRecipeById(_ id: Int)->FullRecipe?{
        if let receip = dummyData.first(where: {
            $0.id == id
        }){
            return receip
        }else{
            return nil
        }
    }
}
