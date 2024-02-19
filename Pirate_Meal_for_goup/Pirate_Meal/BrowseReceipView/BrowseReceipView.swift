//
//  BrowseReceipViewModel.swift
//  Pirate_Meal
//
//  Created by Danny Dauck on 19.02.24.
//

import SwiftUI

struct BrowseReceipView: View {
    
    @ObservedObject var viewModel = BrowseRecipeViewModel()
    var body: some View {
        NavigationStack{
            List(viewModel.receips, id: \.id){ receip in
                
                NavigationLink(destination: ReceipDetailView(vm: ReceipDetailViewModel(receip: receip))){
                    
                    ReceipRow(receip: receip)
                }
                
            }.onAppear{
                viewModel.loadReiceips()
            }
        }
    }
}

#Preview {
    BrowseReceipView()
}
