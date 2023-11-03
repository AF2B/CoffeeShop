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
                    Label("Inicio", systemImage: "house")
                }
                .tag(0)
            
            FavoriteView()
                .tabItem {
                    Label("Favorites", systemImage: "heart.fill")
                }
                .tag(1)
            
            CartView()
                .tabItem {
                    Label("Carrinho", systemImage: "cart")
                }
                .tag(2)
            
            NotificationsView()
                .tabItem {
                    Label("Notifications", systemImage: "bell")
                }
                .tag(3)
        }
        .navigationBarBackButtonHidden(true)
        .background(
            Color.white.opacity(0.9)
                .ignoresSafeArea()
        )
        .animation(.interactiveSpring(response: 0.6, dampingFraction: 0.8, blendDuration: 0.25))
    }
}

#Preview {
    MainTabBar()
}
