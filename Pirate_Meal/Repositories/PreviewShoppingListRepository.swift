//
//  PreviewShoppingListRepository.swift
//  Pirate_Meal
//
//  Created by Vincent Neumann, Siahrrei Wehrhahn, Mike Reichenbach and Danny Dauck on 21.02.24.
//

import Foundation


class PreviewShoppingListRepository{
    
    static let shared = PreviewShoppingListRepository()
    
    private var shoppingList: [ShoppingListItem] = []
    
    //sperrt den Zugriff auf init um versehentliches Instanzieren zu vermeiden
    private init(){}
    
    
    
    func getItems()->[ShoppingListItem]{
        shoppingList
    }
    
    func createItems(_ ingredientList: [Ingredient]){
        for ingredient in ingredientList{
            if shoppingList.contains(where: {
                $0.name == ingredient.name
            }){
                let index = shoppingList.firstIndex(where: {
                    $0.name == ingredient.name
                })
                shoppingList[index!] = ShoppingListItem(name: shoppingList[index!].name, quantity: shoppingList[index!].quantity + ingredient.amount, unit: shoppingList[index!].unit, checked: false)
            }else{
                shoppingList.append(ShoppingListItem(name: ingredient.name, quantity: ingredient.amount, unit: ingredient.unit, checked: false))
            }
        }
    }
    
    func toggleChecked(id: UUID){
        guard let index = shoppingList.firstIndex(where: {$0.id == id}) else{
            return
        }
        
        shoppingList[index].checked.toggle()
        
    }
    
    func deleteItem(id: UUID){
        shoppingList.removeAll(where: {$0.id == id})
    }
    
    func clearAllChecked(){
        shoppingList.removeAll(where: {$0.checked == true})
    }
}
