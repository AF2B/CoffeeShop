//
//  DetailItemView.swift
//  CoffeeShop
//
//  Created by André Filipe Fonsêca Borba on 23/10/23.
//

import SwiftUI

struct DetailItemView: View {
    @State private var isSelectedS = false
    @State private var isSelectedM = false
    @State private var isSelectedL = false
    @State private var isFavorite = false
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            ScrollView {
                HStack(alignment: .center, spacing: 8) {
                    Spacer()
                    
                    Button {
                        isFavorite.toggle()
                    } label: {
                        if isFavorite {
                            Image(systemName: "heart.fill")
                                .foregroundStyle(.red)
                        } else {
                            Image(systemName: "heart")
                                .foregroundStyle(.black)
                        }
                    }
                    .padding()
                }
                
                VStack(alignment: .leading, spacing: 2) {
                    Image("coffee")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 315, height: 226)
                        .padding(.leading, 42)
                    VStack(alignment: .leading, spacing: 6) {
                        Text("Cappucino")
                            .fontWeight(.semibold)
                            .foregroundStyle(Color(hex: 0x2F2D2C))
                        
                        Text("com Chocolate")
                            .foregroundStyle(Color(hex: 0x9B9B9B))
                        
                        HStack {
                            Image(systemName: "star.fill")
                                .foregroundStyle(.yellow)
                            
                            Text("4.8")
                            Text("(230)")
                                .foregroundStyle(Color(hex: 0x808080))
                            
                            Spacer()
                            
                            Image("graocafe")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                                .background(.white)
                                .foregroundStyle(.red)
                            
                            Image("caixadeleite")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                                .background(.white)
                        }
                        .padding(.vertical, 6)
                        
                        Divider()
                            .padding(.bottom, 10)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Descrição")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .foregroundStyle(Color(hex: 0x2F2D2C))
                            
                            Text("O cappuccino é uma bebida de aproximadamente 150 ml (5 oz), com 25 ml de café expresso e 85 ml de leite fresco...")
                                .foregroundStyle(Color(hex: 0x9B9B9B))
                            Text("Saiba mais")
                                .foregroundStyle(Color(hex: 0xC67C4E))
                                .fontWeight(.semibold)
                        }
                        
                        VStack(alignment: .leading, spacing: 12) {
                            Text("Tamanho")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .foregroundStyle(Color(hex: 0x2F2D2C))
                            
                            HStack {
                                Button {
                                    print("...")
                                    isSelectedS.toggle()
                                    isSelectedL = false
                                    isSelectedM = false
                                } label: {
                                    Text("S")
                                        .frame(width: 96, height: 43)
                                        .background(isSelectedS ? Color(hex: 0xFFF5EE) : .white)
                                        .clipShape(RoundedRectangle(cornerRadius: 18))
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 12)
                                                .stroke(Color(hex: 0x9B9B9B))
                                        )
                                }
                                Button {
                                    print("...")
                                    isSelectedM.toggle()
                                    isSelectedL = false
                                    isSelectedS = false
                                } label: {
                                    Text("M")
                                        .frame(width: 96, height: 43)
                                        .background(isSelectedM ? Color(hex: 0xFFF5EE) : .white)
                                        .clipShape(RoundedRectangle(cornerRadius: 18))
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 12)
                                                .stroke(Color(hex: 0x9B9B9B))
                                        )
                                }
                                Button {
                                    print("...")
                                    isSelectedL.toggle()
                                    isSelectedM = false
                                    isSelectedS = false
                                } label: {
                                    Text("L")
                                        .frame(width: 96, height: 43)
                                        .background(isSelectedL ? Color(hex: 0xFFF5EE) : .white)
                                        .clipShape(RoundedRectangle(cornerRadius: 18))
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 12)
                                                .stroke(Color(hex: 0x9B9B9B))
                                        )
                                }
                            }
                            HStack {
                                VStack(alignment: .leading, spacing: 8) {
                                    Text("Preço")
                                        .foregroundStyle(Color(hex: 0x9B9B9B))
                                    Text("R$ 4,53")
                                        .foregroundStyle(Color(hex: 0xC67C4E))
                                        .font(.title3)
                                        .fontWeight(.semibold)
                                }
                                
                                Spacer()
                                
                                Button {
                                    print("...")
                                } label: {
                                    NavigationLink(destination: OrderView(isDeliverSelected: true, isPickUp: false)) {
                                        Text("Compre já")
                                            .frame(width: 222, height: 70)
                                            .background(Color(hex: 0xC67C4E))
                                            .foregroundStyle(.white)
                                        .clipShape(RoundedRectangle(cornerRadius: 18))
                                    }
                                }
                            }
                            .padding(.top, 20)
                        }
                    }
                    .padding(42)
                }
            }
            .navigationTitle("Pedido")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        dismiss()
                    }) {
                        Image(systemName: "chevron.left") // Personaliza o
                            .imageScale(.large)
                            .foregroundColor(.primary)
                            .padding(.top, 12)
                    }
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    DetailItemView()
}
