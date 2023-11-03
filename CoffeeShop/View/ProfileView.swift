//
//  ProfileView.swift
//  CoffeeShop
//
//  Created by André Filipe Fonsêca Borba on 02/11/23.
//

import SwiftUI

struct ProfileView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            Image("merecent")
                .resizable()
                .scaledToFill()
                .frame(width: 120, height: 120)
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(Color(hex: 0xC67C4E), lineWidth: 3)
                )
                .padding(.bottom, 20)
            
            Text("Andre Borba")
                .font(.title)
                .fontWeight(.bold)
            
            Text("andre.borbaaf2b@gmail.com")
                .font(.subheadline)
                .foregroundColor(Color(hex: 0x808080))
            
            Spacer()
            
            Text("Cafés Favoritos:")
                .font(.headline)
                .fontWeight(.bold)
                .padding(.top, 20)
            
            List {
                Text("Café Favorito 1")
                Text("Café Favorito 2")
                Text("Café Favorito 3")
            }
            .clipShape(RoundedRectangle(cornerRadius: 12))
            
            Text("Mais Comprados:")
                .font(.headline)
                .fontWeight(.bold)
                .padding(.top, 20)
            
            List {
                Text("Café Mais Comprado 1")
                Text("Café Mais Comprado 2")
                Text("Café Mais Comprado 3")
            }
            .clipShape(RoundedRectangle(cornerRadius: 12))
            
            Text("Mais bem Avaliados:")
                .font(.headline)
                .fontWeight(.bold)
                .padding(.top, 20)
            
            List {
                Text("Café Mais Tomado 1")
                Text("Café Mais Tomado 2")
                Text("Café Mais Tomado 3")
            }
            .clipShape(RoundedRectangle(cornerRadius: 12))
        }
        .padding()
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: backButton)
    }
    
    var backButton: some View {
        Button(action: {
            dismiss()
        }) {
            Image(systemName: "chevron.left")
                .foregroundColor(.black)
        }
    }
}

#Preview {
    ProfileView()
}
