//
//  SearchBar.swift
//  CoffeeShop
//
//  Created by André Filipe Fonsêca Borba on 30/10/23.
//

import SwiftUI

struct SearchBar: View {
    @Binding var searchText: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundStyle(Color(hex: 0xFFFFFF))
            
            TextField("Search", text: $searchText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .foregroundStyle(Color(hex: 0x989898))
            
            Button {
                if !searchText.isEmpty {
                    searchText = ""
                }
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                        .frame(width: 32, height: 32)
                        .foregroundColor(Color(hex: 0xC67C4E))
                    
                    Image(systemName: "slider.horizontal.3")
                        .foregroundColor(.white)
                        .imageScale(.medium)
                }
            }
        }
        .padding(14)
        .background(Color(hex: 0x313131))
        .clipShape(RoundedRectangle(cornerRadius: 18))
        .padding(.horizontal)
    }
}

#Preview {
    SearchBar(searchText: .constant("Search Coffee"))
}
