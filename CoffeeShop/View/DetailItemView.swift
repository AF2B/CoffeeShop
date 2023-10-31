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
    
    var body: some View {
        ScrollView {
            HStack(spacing: 122) {
                Image(systemName: "chevron.left")
                Text("Detail")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color(hex: 0x2F2D2C))
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
                    
                    Text("with chocolate")
                        .foregroundStyle(Color(hex: 0x9B9B9B))
                    
                    HStack {
                        Image(systemName: "star.fill")
                            .foregroundStyle(.yellow)
                        
                        Text("4.8")
                        Text("(230)")
                            .foregroundStyle(Color(hex: 0x808080))
                        
                        Spacer()
                        
                        Image("bean")
                            .background(Color(hex: 0xC67C4E))
                        
                        Image("milk")
                            .background(Color(hex: 0xC67C4E))
                    }
                    .padding(.vertical, 6)
                    
                    Divider()
                        .padding(.bottom, 10)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Description")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color(hex: 0x2F2D2C))
                        
                        Text("A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo...")
                            .foregroundStyle(Color(hex: 0x9B9B9B))
                        Text("Read More")
                            .foregroundStyle(Color(hex: 0xC67C4E))
                            .fontWeight(.semibold)
                    }
                    
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Size")
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
                                Text("Price")
                                    .foregroundStyle(Color(hex: 0x9B9B9B))
                                Text("$ 4.53")
                                    .foregroundStyle(Color(hex: 0xC67C4E))
                                    .font(.title3)
                                    .fontWeight(.semibold)
                            }
                            
                            Spacer()
                            
                            Button {
                                print("...")
                            } label: {
                                Text("Buy Now")
                                    .frame(width: 222, height: 70)
                                    .background(Color(hex: 0xC67C4E))
                                    .foregroundStyle(.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 18))
                            }
                        }
                        .padding(.top, 20)
                    }
                }
                .padding(42)
            }
        }
    }
}

#Preview {
    DetailItemView()
}
