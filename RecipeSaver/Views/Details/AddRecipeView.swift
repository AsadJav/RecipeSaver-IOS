//
//  AddRecipeView.swift
//  RecipeSaver
//
//  Created by AALA mac on 27/11/2023.
//

import SwiftUI

struct AddRecipeView: View {
    @EnvironmentObject var viewModel: RecipesViewModel
    @State var name: String = ""
    @State var selectedCategory: Category = Category.main
    @State var navigateToRecipe = false
    
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Name")) {
                    TextField("Name", text: $name)
                }
                Section(header: Text("Category")) {
                    Picker("Category", selection: $selectedCategory) {
                        ForEach(Category.allCases) { category in
                            Text(category.rawValue)
                                .tag(category)
                        }
                    }
                    .pickerStyle(.menu)
                }
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading){
                    Button {
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                    }
                }
                ToolbarItem{
                    NavigationLink(isActive: $navigateToRecipe) {
                        HomeView()
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Button {
                            saveRecipe()
                            navigateToRecipe = true
                        } label: {
                            Label("Save", systemImage: "checkmark")
                        }
                    }
                    .disabled(name.isEmpty)
                }
            })
            .navigationTitle("New Recipe")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeView()
    }
}

extension AddRecipeView{
    private func saveRecipe(){
        let recipe = Recipe(name: name, image: "", category: selectedCategory.rawValue)
        viewModel.addRecipe(recipe: recipe)
    }
}
