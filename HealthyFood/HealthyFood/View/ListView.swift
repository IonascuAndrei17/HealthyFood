//
//  ListView.swift
//  HealthyFood
//
//  Created by Andrei Ionascu on 28.12.2022.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var modelData: ModelData
    
    var food = ModelData().food
    
    var body: some View {
        NavigationView{
        List(food){food in
            NavigationLink {
                FoodDetail(food: food)
            } label: {
                ListItem(food: food)
            }
        }
        .navigationTitle("Healthy Food")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
            .environmentObject(ModelData())
    }
}
