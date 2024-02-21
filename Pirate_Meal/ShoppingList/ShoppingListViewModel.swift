//
//  ShoppingListViewModel.swift
//  Pirate_Meal
//
//  Created by Danny Dauck on 20.02.24.
//

import Foundation


class ShoppingListViewModel: ObservableObject{
    
    @Published var shoppingList: [ShoppingListItem] = []
    private var shoppingRepo = PreviewShoppingListRepository.shared
    
    
    init(){
        getItems()
    }
    
    func getItems(){
        
        //TODO Dummy Daten ersetzen
        self.shoppingList = shoppingRepo.getItems().sorted(by: {itemOne, itemTwo in
            itemTwo.checked != itemOne.checked
        })
    }
    
    
    func deleteItem(itemID: UUID){
        shoppingRepo.deleteItem(id: itemID)
        print("try to delete")
        getItems()
    }
    
    func clearAllChecked(){
        shoppingRepo.clearAllChecked()
        getItems()
    }
    
    
    func toggleChecked(id: UUID){
        shoppingRepo.toggleChecked(id: id)
        getItems()
    }
}
