//
//  NewRecipeView.swift
//  RecipeSaver
//
//  Created by AALA mac on 27/11/2023.
//

import SwiftUI

struct NewRecipeView: View {
    @State var isPresented = false
    var body: some View {
        NavigationView {
            Button("Add new Recipe Manually", action: {
                isPresented = true
            })
                .navigationTitle("Add New Recipes")
                .sheet(isPresented: $isPresented) {
                    AddRecipeView()
                        
                }
        }
        .navigationViewStyle(.stack)
    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}
