//
//  ShoppingListViewModel.swift
//  Pirate_Meal
//
//  Created by Danny Dauck on 20.02.24.
//

import Foundation


class ShoppingListViewModel: ObservableObject{
    
    @Published var shoppingList: [ShoppingListItem] = []
    
    
    init(){
        getItems()
    }
    
    func getItems(){
        
        //TODO Dummy Daten ersetzen
        self.shoppingList = [
            ShoppingListItem(name: "Jack Daniels", quantity: 2, unit: "Fl", checked: false),
            ShoppingListItem(name: "Fertig Pizza", quantity: 1, unit: "Pkg", checked: false),
            ShoppingListItem(name: "Milch", quantity: 1, unit: "Liter", checked: false),
            ShoppingListItem(name: "Eier", quantity: 12, unit: "Stück", checked: false),
            ShoppingListItem(name: "Mehl", quantity: 2, unit: "Kilogramm", checked: false),
            ShoppingListItem(name: "Butter", quantity: 250, unit: "Gramm", checked: false),
            ShoppingListItem(name: "Zucker", quantity: 500, unit: "Gramm", checked: false),
            ShoppingListItem(name: "Kartoffeln", quantity: 5, unit: "Kilogramm", checked: false),
            ShoppingListItem(name: "Tomaten", quantity: 6, unit: "Stück", checked: false),
            ShoppingListItem(name: "Hähnchenbrust", quantity: 500, unit: "Gramm", checked: false),
            ShoppingListItem(name: "Salat", quantity: 1, unit: "Kopf", checked: false),
            ShoppingListItem(name: "Olivenöl", quantity: 1, unit: "Liter", checked: false)
        ]
    }
    
    
    func deleteItem(itemID: UUID){
        shoppingList.removeAll(where: {
            $0.id == itemID
        })
    }
    
    func clearAllChecked(){
        shoppingList.removeAll(where: {
            $0.checked
        })
    }
    
}
