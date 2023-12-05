//
//  RecipeModel.swift
//  RecipeSaver
//
//  Created by AALA mac on 27/11/2023.
//

import Foundation

enum Category: String, CaseIterable, Identifiable{
    var id: String { self.rawValue }
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe: Identifiable{
    let id = UUID()
    let name: String
    let image: String
    let category: Category.RawValue
}

extension Recipe{
    static let all: [Recipe] = [
        Recipe(name: "Creamy Soup",
               image: "https://www.seriouseats.com/thmb/2nouHHsjM0bN1vwXMOZGUkLFsJ8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__recipes__images__2017__12__20171115-chicken-soup-vicky-wasik-11-80db1a04d84a43a089e0559efdddd517.jpg",
               category: "Soup"),
        Recipe(name: "Veggetable Soup",
               image: "https://img.freepik.com/premium-photo/delicious-carrot-beef-brisket-casserole_1205-12295.jpg?size=626&ext=jpg&ga=GA1.1.2089949071.1701071149&semt=sph",
               category: "Soup"),
        Recipe(name: "Beef Curry",
               image: "https://img.freepik.com/free-photo/well-done-steak-homemade-potatoes_140725-3989.jpg?size=626&ext=jpg",
               category: "Main"),
        Recipe(name: "Mutton Champ",
               image: "https://img.freepik.com/free-photo/green-salad-with-chopped-lettuce-black-olives_114579-9272.jpg?size=626&ext=jpg",
               category: "Main"),
        Recipe(name: "Russian Salad",
               image: "https://img.freepik.com/free-photo/top-view-meals-tasty-yummy-different-pastries-dishes-brown-surface_140725-14554.jpg?size=626&ext=jpg",
               category: "Dessert"),
        Recipe(name: "Ever Green",
               image: "https://img.freepik.com/free-photo/delicious-burger-with-many-ingredients-isolated-white-background-tasty-cheeseburger-splash-sauce_90220-1266.jpg?size=626&ext=jpg",
               category: "Appetizer"),
        Recipe(name: "Don't Know What",
               image: "https://img.freepik.com/free-photo/kebab-set-with-various-meat-pieces-lemon-slices_140725-3431.jpg?size=626&ext=jpg&ga=GA1.1.2089949071.1701071149&semt=sph",
               category: "Drink")
    ]
}
