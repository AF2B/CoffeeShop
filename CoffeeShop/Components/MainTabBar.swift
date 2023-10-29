//
//  TabBar.swift
//  CoffeeShop
//
//  Created by André Filipe Fonsêca Borba on 23/10/23.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            FavoriteView()
                .tabItem {
                    Label("Favorites", systemImage: "heart.fill")
                }
            
            CartView()
                .tabItem {
                    Label("Bag", systemImage: "bag")
                }
            
            NotificationsView()
                .tabItem {
                    Label("Notifications", systemImage: "bell")
                }
        }
    }
}

#Preview {
    TabBar()
}
