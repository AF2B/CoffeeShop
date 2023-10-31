//
//  TabBar.swift
//  CoffeeShop
//
//  Created by André Filipe Fonsêca Borba on 23/10/23.
//

import SwiftUI

struct MainTabBar: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(0)
            
            Text("Favorites")
                .tabItem {
                    Label("Favorites", systemImage: "heart.fill")
                }
                .tag(1)
            
            Text("Bag")
                .tabItem {
                    Label("Bag", systemImage: "bag")
                }
                .tag(2)
            
            Text("Notifications")
                .tabItem {
                    Label("Notifications", systemImage: "bell")
                }
                .tag(3)
        }
    }
}

#Preview {
    MainTabBar()
}
