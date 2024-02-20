//
//  BrowseRecipeViewModel.swift
//  Pirate_Meal
//
//  Created by Danny Dauck on 19.02.24.
//

import Foundation


class BrowseRecipeViewModel: ObservableObject{
    
    @Published var receips: [Receip] = []
    
    
    func loadReiceips(){
        
        self.receips = [
            Receip(id: 716429, title: "Pasta with Garlic, Scallions, Cauliflower & Breadcrumbs", image: "https://spoonacular.com/recipeImages/716429-312x231.jpg"),
            Receip(id: 715538, title: "What to make for dinner tonight?? Bruschetta Style Pork & Pasta", image: "https://spoonacular.com/recipeImages/715538-312x231.jpg")
        ]
    }
    
}
