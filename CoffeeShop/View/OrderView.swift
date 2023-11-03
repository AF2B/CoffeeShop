//
//  OrderView.swift
//  CoffeeShop
//
//  Created by André Filipe Fonsêca Borba on 23/10/23.
//

import SwiftUI

struct OrderView: View {
    @State private var isDeliverSelected: Bool
    @State private var isPickUp: Bool
    @State private var coffeeCount = 0
    @State private var isDeliveryViewPresented = false
    @State private var hiddenTabBar = false
    @Environment(\.dismiss) var dismiss
    
    init(isDeliverSelected: Bool, isPickUp: Bool) {
        self._isDeliverSelected = State(initialValue: isDeliverSelected)
        self._isPickUp = State(initialValue: isPickUp)
        self._hiddenTabBar = State(initialValue: hiddenTabBar)
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    ToggleButton(isDeliverSelected: $isDeliverSelected, isPickUp: $isPickUp)
                        .background(Color(hex: 0xF2F2F2))
                        .padding(.horizontal)
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Endereço de Entrega")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .padding(.vertical, 6)
                        
                        Text("Rua Padre Inglês, 257")
                        
                        Text("Boa Vista, Recife - PE, 50050-230")
                            .font(.footnote)
                            .fontWeight(.light)
                            .foregroundStyle(.gray)
                        
                        HStack {
                            Button {
                                print("Edit Address")
                            } label: {
                                Image(systemName: "pencil")
                                    .foregroundStyle(.black)
                                Text("Editar Endereço")
                                    .font(.footnote)
                                    .foregroundStyle(.black)
                            }
                            .frame(width: 140, height: 30)
                            .overlay(
                                RoundedRectangle(cornerRadius: 18)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                            
                            Button {
                                print("Add Note")
                            } label: {
                                Image(systemName: "note")
                                    .foregroundStyle(.black)
                                Text("Adicionar Observação")
                                    .font(.footnote)
                                    .foregroundStyle(.black)
                            }
                            .frame(width: 180, height: 30)
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
                            
                            Text("com Chocolate")
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
                        Text("1 Desconto aplicado")
                            .fontWeight(.semibold)
                        Image(systemName: "arrow.right")
                    }
                    .frame(width: 315, height: 70)
                    .overlay(
                        RoundedRectangle(cornerRadius: 14)
                            .stroke(Color(red: 0.92, green: 0.92, blue: 0.92), lineWidth: 1)
                    )
                    .padding(.vertical, 2)
                    .padding(.leading, 42)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Resumo de Pagamento")
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        HStack {
                            Text("Preço")
                                .foregroundStyle(Color(hex: 0x2F2D2C))
                            
                            Spacer()
                            
                            Text("R$ 4,53")
                                .fontWeight(.semibold)
                                .foregroundStyle(Color(hex: 0x2F2D2C))
                        }
                        
                        HStack {
                            Text("Taxa de Entrega")
                                .foregroundStyle(Color(hex: 0x2F2D2C))
                            
                            Spacer()
                            
                            Text("R$ 2,0")
                                .foregroundStyle(.gray)
                                .strikethrough()
                            Text("R$ 1,0")
                                .fontWeight(.semibold)
                                .foregroundStyle(Color(hex: 0x2F2D2C))
                        }
                    }
                    .padding(18)
                    .padding(.vertical, 0)
                    
                    Divider()
                    
                    HStack {
                        Text("Total do Pagamento")
                            .foregroundStyle(Color(hex: 0x2F2D2C))
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Text("$ 5,53")
                    }
                    .padding(18)
                    
                    HStack(alignment: .center) {
                        Image("moneys")
                        
                        HStack(alignment: .center, spacing: 10) {
                            Text("Dinheiro")
                                .background(Color(hex: 0xC67C4E))
                                .foregroundStyle(.white)
                                .padding(6)
                            Text("R$ 5,53")
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
                        isDeliveryViewPresented = true
                    } label: {
                        Text("Pedir")
                            .padding(.horizontal, 109)
                            .padding(.vertical, 21)
                            .frame(width: 315, alignment: .center)
                            .background(Color(red: 0.78, green: 0.49, blue: 0.31))
                            .foregroundStyle(.white)
                            .cornerRadius(16)
                    }
                    .padding(.leading, 46)
                    .padding(.top, 8)
                    .background(
                        NavigationLink("", destination: DeliveryView(), isActive: $isDeliveryViewPresented)
                            .opacity(0)
                            .frame(width: 0, height: 0)
                    )
                }
            }
            .padding(42)
        }
        .navigationTitle("Pedido")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    dismiss()
                }) {
                    Image(systemName: "chevron.left")
                        .imageScale(.large)
                        .foregroundColor(.primary)
                        .padding(.top, 12)
                }
            }
        }
    }
}

#Preview {
    OrderView(isDeliverSelected: true, isPickUp: false)
}
