//
//  PreviewShoppingListRepository.swift
//  Pirate_Meal
//
//  Created by Vincent Neumann, Siahrrei Wehrhahn, Mike Reichenbach and Danny Dauck on 21.02.24.
//

import Foundation

class APIReceipeRepository{
    
    struct ErrorRecipe: Error {}
    
    private let apiKeyRecipe = "acd9ee762087462eb8282ee8ca8e5c0c"
    private let secondKey = "ce8898cbd8fa413e8da17d4b20e45646"
    
    func searchReceipes(_ search: String) async throws -> SearchResult {
        guard let url = URL(string: "https://api.spoonacular.com/recipes/complexSearch?apiKey=\(secondKey)\(search.isEmpty ? "" : "&query=\(search)")&number=20") else {
            throw ErrorRecipe()
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        
        return try JSONDecoder().decode(SearchResult.self, from: data)
    }
    
    func getFullRecipeById(_ id: Int) async throws -> FullRecipe {
        guard let url = URL(string: "https://api.spoonacular.com/recipes/\(id)/information?apiKey=\(secondKey)") else {
            throw ErrorRecipe()
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        
        return try JSONDecoder().decode(FullRecipe.self, from: data)
    }
}
