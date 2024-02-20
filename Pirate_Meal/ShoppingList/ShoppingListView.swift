//
//  ShoppingListView.swift
//  Pirate_Meal
//
//  Created by Danny Dauck on 20.02.24.
//

import SwiftUI

struct ShoppingListView: View {
    
    @ObservedObject var vm: ShoppingListViewModel
    
    var body: some View {
        VStack{
            Text("Einkaufswagen")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
            VStack{
                HStack{
                    Button(action: {
                        vm.clearAllChecked()
                    }, label: {
                        Text("Wagen aufräumen")
                        
                    }).buttonStyle(.borderedProminent)
                        .padding(.leading)
                        .padding(.top)
                    
                    Spacer()
                }
                List($vm.shoppingList, id: \.id){item in
                    ShoppingListItemRow(item: item)
                        .swipeActions(edge: .trailing){
                            Button(role: .destructive){
                                vm.deleteItem(itemID: item.id)
                            } label: {
                                Image(systemName: "trash")
                            }
                        }.listRowBackground(Color.white.opacity(0.8))
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
    ShoppingListView(vm: ShoppingListViewModel())
}
