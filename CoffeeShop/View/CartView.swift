//
//  CartView.swift
//  CoffeeShop
//
//  Created by André Filipe Fonsêca Borba on 23/10/23.
//

import SwiftUI

struct CartView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Seu Carrinho")
                    .font(.largeTitle)
                    .padding()
                
                List {
                    Text("Café Espresso - R$2.99")
                    Text("Cappuccino - R$3.49")
                    Text("Latte - R$3.99")
                    Text("Mocha - R$4.49")
                }
                
                Spacer()
                
                HStack {
                    Text("Total:")
                        .font(.headline)
                    
                    Spacer()
                    
                    Text("R$14.96")
                        .font(.headline)
                }
                .padding()
                
                Button(action: {
                    print("...")
                }) {
                    Text("Finalizar Compra")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color(hex: 0xC67C4E))
                        .cornerRadius(10)
                }
                .padding()
            }
        }
    }
}
#Preview {
    CartView()
}
