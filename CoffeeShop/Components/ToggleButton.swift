//
//  ToggleButton.swift
//  CoffeeShop
//
//  Created by André Filipe Fonsêca Borba on 28/10/23.
//

import SwiftUI

struct ToggleButton: View {
    @Binding var isDeliverSelected: Bool
    
    var body: some View {
        HStack {
            Button(action: {
                isDeliverSelected = true
            }) {
                Text("Deliver")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(isDeliverSelected ? Color(hex: 0xC67C4E) : Color(hex: 0xF2F2F2))
                    .foregroundColor(isDeliverSelected ? Color.white : Color.black)
            }
            .cornerRadius(10)
            
            Button(action: {
                isDeliverSelected = false
            }) {
                Text("Pick Up")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(!isDeliverSelected ? Color(hex: 0xC67C4E) : Color(hex: 0xF2F2F2))
                    .foregroundColor(!isDeliverSelected ? Color.white : Color.black)
            }
            .cornerRadius(10)
        }
    }
}


#Preview {
    ToggleButton(isDeliverSelected: .constant(true))
}
