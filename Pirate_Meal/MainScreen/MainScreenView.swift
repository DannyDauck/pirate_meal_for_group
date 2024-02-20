//
//  MainScreenView.swift
//  Pirate_Meal
//
//  Created by Danny Dauck on 19.02.24.
//

import SwiftUI

struct MainScreenView: View {
    
    @State var currentTab = 1
    
    var body: some View {
        TabView {
            BrowseReceipView()
                .tabItem {
                    Image(systemName:
                            currentTab == 1 ?
                          "book":"book.closed")
                }.onAppear{
                    currentTab = 1
                }
            
            ShoppingListView()
                .tabItem {
                    Image(systemName: "cart")
                }
                .onAppear{
                    currentTab = 2
                }
        }
    }
}

#Preview {
    MainScreenView()
}
