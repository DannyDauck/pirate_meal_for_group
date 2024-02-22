//
//  BrowseRecipeViewModel.swift
//  Pirate_Meal
//
//  Created by Danny Dauck on 19.02.24.
//

import Foundation


class BrowseRecipeViewModel: ObservableObject{
    
    @Published var receips: [Receip] = []
    private var previewRepo: APIReceipeRepository
    
    init(){
        self.previewRepo = .init()
    }
    
    @MainActor
    func loadReiceips(){
        Task {
            do {
                self.receips = try await previewRepo.searchReceipes("").results
            } catch {
                print(error)
            }
        }
    }
    
}
