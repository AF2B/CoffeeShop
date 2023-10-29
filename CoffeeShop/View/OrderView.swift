//
//  OrderView.swift
//  CoffeeShop
//
//  Created by André Filipe Fonsêca Borba on 23/10/23.
//

import SwiftUI

struct OrderView: View {
    @State private var isDeliverSelected = true
    @State private var coffeeCount = 0
    
    var body: some View {
        ScrollView {
            Text("Order")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.semibold)
                .padding(.top, 12)
            
            VStack(alignment: .leading) {
                
                ToggleButton(isDeliverSelected: $isDeliverSelected)
                    .background(Color(hex: 0xF2F2F2))
                    .padding(.horizontal)
                
                VStack(alignment: .leading, spacing: 2) {
                    Text("Delivery Address")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.vertical, 6)
                    
                    Text("J1. Kpg Sutoyo")
                    
                    Text("Kpg. Sutoyo No. 620, Bilzen Tanjungbalai.")
                        .font(.footnote)
                        .fontWeight(.light)
                        .foregroundStyle(.gray)
                    
                    HStack {
                        Button {
                            print("Edit Address")
                        } label: {
                            Image(systemName: "pencil")
                                .foregroundStyle(.black)
                            Text("Edit Address")
                                .font(.footnote)
                                .foregroundStyle(.black)
                        }
                        .frame(width: 130, height: 30)
                        .overlay(
                            RoundedRectangle(cornerRadius: 18)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                        
                        Button {
                            print("Add Note")
                        } label: {
                            Image(systemName: "note")
                                .foregroundStyle(.black)
                            Text("Add Note")
                                .font(.footnote)
                                .foregroundStyle(.black)
                        }
                        .frame(width: 130, height: 30)
                        .overlay(
                            RoundedRectangle(cornerRadius: 18)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                    }
                    .padding(.vertical)
                }
                .padding(.horizontal, 30)
                
                Divider()
                
                HStack {
                    Image("coffee")
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .frame(width: 88, height: 88)
                        .clipped()
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .padding(.leading)
                    
                    VStack(alignment: .leading) {
                        Text("Cappucino")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)
                        
                        Text("with Chocolate")
                            .foregroundStyle(.gray)
                    }
                    
                    Spacer()
                    
                    HStack {
                        Button {
                            if coffeeCount <= 0 {
                                coffeeCount = 0
                            } else {
                                coffeeCount -= 1
                            }
                        } label: {
                            Image(systemName: "minus.circle")
                                .foregroundStyle(.black)
                        }
                        Text("\(coffeeCount)")
                        Button {
                            coffeeCount += 1
                        } label: {
                            Image(systemName: "plus.circle")
                                .foregroundStyle(.black)
                        }
                    }
                    .padding(.horizontal)
                }
                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 394, height: 4)
                    .background(Color(red: 0.96, green: 0.96, blue: 0.96))
                
                HStack(alignment: .center, spacing: 14) {
                    Image("discount")
                    Text("1 Discount is applied")
                        .fontWeight(.semibold)
                    Image(systemName: "arrow.right")
                }
                .frame(width: 315, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .overlay(
                    RoundedRectangle(cornerRadius: 14)
                        .stroke(Color(red: 0.92, green: 0.92, blue: 0.92), lineWidth: 1)
                )
                .padding(.vertical, 2)
                .padding(.leading, 42)
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Payment Summary")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    HStack {
                        Text("Price")
                            .foregroundStyle(Color(hex: 0x2F2D2C))
                        
                        Spacer()
                        
                        Text("$ 4.53")
                            .fontWeight(.semibold)
                            .foregroundStyle(Color(hex: 0x2F2D2C))
                    }
                    
                    HStack {
                        Text("Delivery Fee")
                            .foregroundStyle(Color(hex: 0x2F2D2C))
                        
                        Spacer()
                        
                        Text("$ 2.0")
                            .foregroundStyle(.gray)
                            .strikethrough()
                        Text("$ 1.0")
                            .fontWeight(.semibold)
                            .foregroundStyle(Color(hex: 0x2F2D2C))
                    }
                }
                .padding(18)
                .padding(.vertical, 0)
                
                Divider()
                
                HStack {
                    Text("Total Payment")
                        .foregroundStyle(Color(hex: 0x2F2D2C))
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    Text("$ 5.53")
                }
                .padding(18)
                
                HStack(alignment: .center) {
                    Image("moneys")
                    
                    HStack(alignment: .center, spacing: 10) {
                        Text("Cash")
                            .background(Color(hex: 0xC67C4E))
                            .foregroundStyle(.white)
                        Text("$ 5.53")
                    }
                    .padding(.leading, 6)
                    .padding(.trailing, 12)
                    .padding(.vertical, 2)
                    .background(Color(red: 0.96, green: 0.96, blue: 0.96))
                    .cornerRadius(20)
                    
                    Spacer()
                    
                    Image(systemName: "ellipsis.circle")
                        .padding(.horizontal)
                }
                .padding(.vertical, 0)
                .padding(.horizontal, 18)
                .frame(width: 400)
                
                Button {
                    print("...")
                } label: {
                    Text("Order")
                        .padding(.horizontal, 109)
                        .padding(.vertical, 21)
                        .frame(width: 315, alignment: .center)
                        .background(Color(red: 0.78, green: 0.49, blue: 0.31))
                        .foregroundStyle(.white)
                        .cornerRadius(16)
                }
                .padding(.leading, 46)
                .padding(.top, 8)
            }
        }
    }
}

#Preview {
    OrderView()
}
