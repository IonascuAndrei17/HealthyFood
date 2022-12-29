//
//  CategoryItem.swift
//  HealthyFood
//
//  Created by Andrei Ionascu on 28.12.2022.
//

import SwiftUI

struct CategoryItem: View {
    var food: Food
    
    var body: some View {
        VStack(alignment: .leading){
            food.image
                .renderingMode(.original)
                .resizable()
                .frame(width:155, height: 155)
                .cornerRadius(5)
            Text(food.name)
                .foregroundColor(.primary)
                .font(.caption)
                .bold()
        }
        .padding(.leading, 15)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(food: ModelData().food[0])
            .environmentObject(ModelData())
    }
}
