//
//  Food.swift
//  HealthyFood
//
//  Created by Andrei Ionascu on 28.12.2022.
//

import Foundation
import SwiftUI

struct Food: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var ingredients: String
    var isFeatured: Bool
    
    var category: Category
    enum Category: String, CaseIterable, Codable{
        case pui = "Pui"
        case porc = "Porc"
        case vita = "Vita"
    }
    
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
