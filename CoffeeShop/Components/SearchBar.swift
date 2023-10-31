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
            
            if !searchText.isEmpty {
                Button(action: {
                    searchText = ""
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.gray)
                        .imageScale(.medium)
                }
            }
        }
        .padding(10)
        .background(Color(hex: 0x313131))
        .clipShape(RoundedRectangle(cornerRadius: 18))
        .padding(.horizontal)
    }
}

#Preview {
    SearchBar(searchText: .constant("Search Coffee"))
}
