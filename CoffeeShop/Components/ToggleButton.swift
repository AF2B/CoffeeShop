//
//  ToggleButton.swift
//  CoffeeShop
//
//  Created by André Filipe Fonsêca Borba on 28/10/23.
//

import SwiftUI

struct ToggleButton: View {
    @Binding var isDeliverSelected: Bool
    @Binding var isPickUp: Bool
    
    var body: some View {
        HStack {
            Button(action: {
                withAnimation {
                    isDeliverSelected = true
                    isPickUp = false
                }
            }) {
                Text("Entrega")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(isDeliverSelected ? Color(hex: 0xC67C4E) : Color(hex: 0xF2F2F2))
                    .foregroundColor(isDeliverSelected ? Color.white : Color.black)
            }
            .cornerRadius(10)
            
            Button(action: {
                withAnimation {
                    isDeliverSelected = false
                    isPickUp = true
                }
            }) {
                Text("Retirar")
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
    ToggleButton(isDeliverSelected: .constant(true), isPickUp: .constant(false))
}
