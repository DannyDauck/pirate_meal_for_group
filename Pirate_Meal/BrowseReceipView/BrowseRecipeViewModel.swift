//
//  BrowseRecipeViewModel.swift
//  Pirate_Meal
//
//  Created by Danny Dauck on 19.02.24.
//

import Foundation


class BrowseRecipeViewModel: ObservableObject{
    
    @Published var receips: [Receip] = []
    private var previewRepo: PreviewReceipeRepository
    
    init(){
        self.previewRepo = .init()
    }
    
    
    func loadReiceips(){
        self.receips = previewRepo.searchReceipes().reults
    }
    
}
