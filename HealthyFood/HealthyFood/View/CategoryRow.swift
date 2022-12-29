//
//  CategoryRow.swift
//  HealthyFood
//
//  Created by Andrei Ionascu on 28.12.2022.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Food]
    
    var body: some View {
        VStack(alignment: .leading){
            
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
                
            
            ScrollView(.horizontal, showsIndicators: false){
            HStack(alignment: .top, spacing: 10){
                ForEach(items){ food in
                    NavigationLink{
                        FoodDetail(food: food)
                    } label:{
                        CategoryItem(food: food)
                    }
                }
            }
            }
            .frame(height: 185)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var food = ModelData().food
    static var previews: some View {
        CategoryRow(
            categoryName: food[0].category.rawValue,
            items: Array(food.prefix(4)))
        .environmentObject(ModelData())
    }
}
