//
//  ContentView.swift
//  HealthyFood
//
//  Created by Andrei Ionascu on 28.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .featured

    enum Tab {
        case featured
        case list
    }

    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .environmentObject(ModelData())
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)

            ListView()
                .environmentObject(ModelData())
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
