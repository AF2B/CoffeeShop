//
//  FavoriteView.swift
//  CoffeeShop
//
//  Created by André Filipe Fonsêca Borba on 23/10/23.
//

import SwiftUI

struct FavoriteView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Seus Favoritos")
                    .font(.largeTitle)
                    .padding()
                
                List {
                    Text("Café Espresso")
                    Text("Cappuccino")
                    Text("Latte")
                    Text("Mocha")
                }
            }
        }
    }
}

#Preview {
    FavoriteView()
}
