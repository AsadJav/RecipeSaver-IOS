//
//  RecipesViewModel.swift
//  RecipeSaver
//
//  Created by AALA mac on 27/11/2023.
//

import Foundation


class RecipesViewModel: ObservableObject{
    @Published private(set) var recipes: [Recipe] = []
    
    init(){
        recipes = Recipe.all
    }
    
    func addRecipe(recipe: Recipe){
        recipes.append(recipe)
    }
}
