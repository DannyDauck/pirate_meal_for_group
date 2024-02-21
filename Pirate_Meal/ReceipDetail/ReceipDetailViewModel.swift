//
//  PreviewShoppingListRepository.swift
//  Pirate_Meal
//
//  Created by Vincent Neumann, Siahrrei Wehrhahn, Mike Reichenbach and Danny Dauck on 21.02.24.
//

import Foundation


class ReceipDetailViewModel: ObservableObject{
    
    @Published var title: String
    @Published var id: Int
    @Published var image: String
    @Published var instruction: String = ""
    @Published var ingredients: [Ingredient] = []
    private var previewRepo: PreviewReceipeRepository
    private var shoppingRepo = PreviewShoppingListRepository.shared
    
    init(receip: Receip){
        self.previewRepo = .init()
        self.id = receip.id
        self.title = receip.title
        self.image = receip.image
        loadDetails(receip.id)
    }
    
    
    func addIngredientsToShoppingList(){
        
        shoppingRepo.createItems(ingredients)
        
    }
    
    
    func loadDetails(_ id: Int){
        
        //TODO Dummydaten ersetzen
        guard let fullReceip = previewRepo.getFullRecipeById(id) else{
            return
        }
        
        self.instruction = fullReceip.instructions
        self.ingredients = fullReceip.extendedIngredients
            
        
    }
}
