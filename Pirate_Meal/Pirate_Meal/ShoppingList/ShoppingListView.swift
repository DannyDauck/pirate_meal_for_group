//
//  ShoppingListView.swift
//  Pirate_Meal
//
//  Created by Danny Dauck on 20.02.24.
//

import SwiftUI

struct ShoppingListView: View {
    
    @StateObject private var vm = ShoppingListViewModel()
    
    var body: some View {
        VStack{
            Text("Einkaufswagen")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
            VStack{
                List($vm.shoppingList, id: \.id){item in
                    ShoppingListItemRow(item: item)
                        .swipeActions(edge: .trailing){
                            Button(role: .destructive){
                                vm.deleteItem(itemID: item.id)
                            } label: {
                                Image(systemName: "trash")
                            }
                        }.listRowBackground(Color.white.opacity(0.8))
                }.onAppear{
                    vm.getItems()
                }
            }
            
        }.scrollContentBackground(.hidden)
            .background(Image(.bgfood)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .opacity(0.3))
    }
}

#Preview {
    ShoppingListView()
}
