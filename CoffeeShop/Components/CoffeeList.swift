//
//  CoffeeListView.swift
//  CoffeeShop
//
//  Created by André Filipe Fonsêca Borba on 23/10/23.
//

import SwiftUI

struct CoffeeList: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image("coffee")
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                .cornerRadius(16)
            
            HStack {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                
                Text("4.8")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
            }
            .padding(.top, 8)
            .padding(.leading, 8)

            VStack(alignment: .leading, spacing: 4) {
                Text("Cappuccino")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Text("with Chocolate")
                    .foregroundColor(Color(hex: 0x9B9B9B))
                
                HStack(alignment: .center) {
                    Text("$4.53")
                        .fontWeight(.semibold)
                        .foregroundColor(Color(hex: 0x2F4B4E))
                    
                    Spacer()
                    
                    Image(systemName: "plus")
                        .frame(width: 44, height: 44)
                        .background(Color(hex: 0xC67C4E))
                        .foregroundColor(.white)
                        .cornerRadius(12)
                        .font(.title3)
                }
                .padding(.top, 4)
            }
            .padding(.top, 202)
        }
        .frame(width: 200, height: 100)
    }
}

#Preview {
    CoffeeList()
}
