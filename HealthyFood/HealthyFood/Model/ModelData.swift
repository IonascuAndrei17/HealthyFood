//
//  ModelData.swift
//  HealthyFood
//
//  Created by Andrei Ionascu on 28.12.2022.
//

import Foundation

final class ModelData: ObservableObject {
    @Published var food: [Food] = load("foodData.json")
    
    var features: [Food] {
        food.filter { $0.isFeatured}
    }
    
    var categories: [String: [Food]] {
        Dictionary(
            grouping: food,
            by: { $0.category.rawValue }
        )
    }
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
