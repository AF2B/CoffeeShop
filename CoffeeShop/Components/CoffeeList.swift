//
//  CoffeeListView.swift
//  CoffeeShop
//
//  Created by André Filipe Fonsêca Borba on 23/10/23.
//

import SwiftUI

struct CoffeeList: View {
    @Binding var coffeeName: String
    @Binding var coffeeWith: String
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image("coffee")
                .resizable()
                .scaledToFit()
                .frame(width: 141, height: 132)
            
            HStack {
                Image(systemName: "star.fill")
                    .font(.footnote)
                    .foregroundStyle(.yellow)
                
                Text("4.8")
                    .font(.footnote)
                    .foregroundStyle(.white)
                    .fontWeight(.semibold)
            }
            .offset(x: 6, y: 20)
            
            VStack(alignment: .leading) {
                Text(coffeeName)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color(hex: 0x2F2D2C))
                Text(coffeeWith)
                    .foregroundStyle(Color(hex: 0x9B9B9B))
                
                HStack {
                    Text("$ 4.53")
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(hex: 0x2F4B4E))
                    
                    Spacer()
                    
                    HStack(alignment: .center, spacing: 10) {
                        Text("+")
                            .foregroundStyle(.white)
                    }
                    .frame(width: 20, height: 20)
                    .padding(8)
                    .background(Color(red: 0.78, green: 0.49, blue: 0.31))
                    .cornerRadius(10)
                }
            }
            .offset(y: 130)
        }
        .frame(width: 149, height: 239)
    }
}

#Preview {
    CoffeeList(coffeeName: .constant("Cappucino"), coffeeWith: .constant("with Chocolate"))
}
