//
//  FoodDetail.swift
//  HealthyFood
//
//  Created by Andrei Ionascu on 28.12.2022.
//

import SwiftUI

struct FoodDetail: View {
    var food: Food
    var body: some View {
        VStack{
            Spacer()
            
            Text("Healthy Food")
                .font(.title)
                .foregroundColor(.green)
                .padding(.all)
            
            Spacer()
            
            food.image
                .resizable()
                .frame(width:250, height: 250)
            
            Spacer()
            
            Text(food.name)
                .font(Font.title2.weight(.black))
                .padding(.all)
            Text(food.ingredients)
                .padding(.all)
            
            Spacer()
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct FoodDetail_Previews: PreviewProvider {
    static var previews: some View {
        FoodDetail(food: ModelData().food[2])
    }
}
