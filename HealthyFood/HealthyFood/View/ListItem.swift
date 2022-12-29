//
//  ListItem.swift
//  HealthyFood
//
//  Created by Andrei Ionascu on 28.12.2022.
//

import SwiftUI

struct ListItem: View {
    var food: Food
    var body: some View {
        HStack{
            food.image
                .resizable()
                .frame(width: 50,height: 50)
            Text(food.name)
                .foregroundColor(.green)
            
            Spacer()
            
        }
        .padding(.leading)
    }
}

struct ListItem_Previews: PreviewProvider {
    static var food = ModelData().food
    static var previews: some View {
        ListItem(food: food[0])
    }
}
