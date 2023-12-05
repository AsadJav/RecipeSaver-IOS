//
//  CategoryView.swift
//  RecipeSaver
//
//  Created by AALA mac on 27/11/2023.
//

import SwiftUI

struct CategoryView: View {
    @EnvironmentObject var viewModel: RecipesViewModel
    var category: Category
    
    var recipes: [Recipe] {
        return viewModel.recipes.filter { $0.category == category.rawValue }
    }
    
    var body: some View {
        ScrollView{
            RecipeList(recipes: recipes)
        }
        .navigationTitle(category.rawValue + "s")
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.drink)
            .environmentObject(RecipesViewModel())
    }
}
