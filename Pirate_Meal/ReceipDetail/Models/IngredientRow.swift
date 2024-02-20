//
//  IngredientRow.swift
//  Pirate_Meal
//
//  Created by Danny Dauck on 20.02.24.
//

import SwiftUI

struct IngredientRow: View {
    
    let ingredient: Ingredient
    
    var body: some View {
        VStack{
            HStack{
                Text(String(ingredient.amount.formatted()))
                Text(ingredient.unit)
                Text(ingredient.name)
                    .bold()
            }.padding(.horizontal)
            Divider()
        }
    }
    
    
}

#Preview {
    IngredientRow(ingredient: Ingredient(name: "Olivenöl", amount: 200, unit: "ml"))
}
