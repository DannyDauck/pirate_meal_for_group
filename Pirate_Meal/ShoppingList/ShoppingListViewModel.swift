//
//  ShoppingListViewModel.swift
//  Pirate_Meal
//
//  Created by Danny Dauck on 20.02.24.
//

import Foundation


class ShoppingListViewModel: ObservableObject{
    
    @Published var shoppingList: [ShoppingListItem] = []
    
    
    func getItems(){
        
        //TODO Dummy Daten ersetzen
        self.shoppingList = [
            ShoppingListItem(name: "Jack Daniels", quantity: 2, unit: "Fl", checked: false),
            ShoppingListItem(name: "Fertig Pizza", quantity: 1, unit: "Pkg", checked: false)
        ]
    }
    
    
    func deleteItem(itemID: UUID){
        shoppingList.removeAll(where: {
            $0.id == itemID
        })
    }
    
    
}
