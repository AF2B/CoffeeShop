//
//  DeliveryView.swift
//  CoffeeShop
//
//  Created by André Filipe Fonsêca Borba on 23/10/23.
//

import SwiftUI
import MapKit

struct DeliveryView: View {
    @State private var coordinate = CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194)
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -8.052432, longitude: -34.891836), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    @State private var isBottomSheetOpen = false
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $region)
                .ignoresSafeArea(.all)
            
            VStack {
                Spacer()
                Button(action: {
                    isBottomSheetOpen.toggle()
                }) {
                    Text("Informações sobre a entrega")
                        .fontWeight(.semibold)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color(hex: 0xC67C4E))
                        .foregroundStyle(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 18))
                }
                .padding(.bottom, 24)
            }
        }
        .toolbar(.hidden, for: .tabBar)
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .sheet(isPresented: $isBottomSheetOpen, content: {
            BottomSheetView(isOpen: $isBottomSheetOpen)
                .presentationDetents([.medium, .large])
        })
    }
}

struct BottomSheetView: View {
    @Binding var isOpen: Bool
    @State private var screenHeight: CGFloat = 0.0
    
    var body: some View {
        VStack(spacing: 12) {
            Text("10 minutos até a entrega")
                .foregroundStyle(Color(hex: 0x303336))
                .fontWeight(.semibold)
            
            HStack {
                Text("Entregador")
                    .foregroundStyle(Color(hex: 0x808080))
                Text("Andre Borba")
                    .foregroundStyle(Color(hex: 0x303336))
            }
            
            HStack {
                Divider()
                    .foregroundColor(.clear)
                    .frame(maxWidth: 80, maxHeight: 10)
                    .background(Color(red: 0.21, green: 0.75, blue: 0.49))
                    .cornerRadius(20)
                Divider()
                    .foregroundColor(.clear)
                    .frame(maxWidth: 80, maxHeight: 10)
                    .background(Color(red: 0.21, green: 0.75, blue: 0.49))
                    .cornerRadius(20)
                Divider()
                    .foregroundColor(.clear)
                    .frame(maxWidth: 80, maxHeight: 10)
                    .background(Color(red: 0.21, green: 0.75, blue: 0.49))
                    .cornerRadius(20)
                Divider()
                    .foregroundColor(.clear)
                    .frame(maxWidth: 80, maxHeight: 10)
                    .background(.gray)
                    .cornerRadius(20)
            }
            .frame(height: 4)
            
            VStack(alignment: .leading, spacing: 12) {
                HStack(alignment: .center, spacing: 6) {
                    Image(systemName: "truck.box.badge.clock")
                        .foregroundStyle(Color(hex: 0xC67C4E))
                        .frame(width: 62, height: 62)
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .inset(by: 0.5)
                                .stroke(Color(hex: 0xDEDEDE))
                        )

                    VStack(alignment: .leading, spacing: 4) {
                        Text("Saiu para entrega")
                            .fontWeight(.semibold)
                            .foregroundStyle(Color(hex: 0x303336))

                        Text("Buscamos entregar seus pedidos no menor tempo possível.")
                            .foregroundStyle(Color(hex: 0x808080))
                    }
                }
                .padding()
            }
            .frame(width: 360, height: 120)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 14))
            .overlay(
                RoundedRectangle(cornerRadius: 14)
                    .stroke(Color(hex: 0xDEDEDE))
            )
            .padding(.horizontal, 16)
            .padding(.vertical, 14)
            
            HStack {
                Image("profile")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 54, height: 54)
                    .clipShape(RoundedRectangle(cornerRadius: 14))
                
                VStack {
                    Text("Andre Borba")
                        .foregroundStyle(Color(hex: 0x303336))
                        .fontWeight(.semibold)
                    
                    Text("iOS Developer")
                        .foregroundStyle(Color(hex: 0x808080))
                        .fontWeight(.light)
                        .font(.subheadline)
                }
                
                Spacer()
                
                HStack {
                    Image(systemName: "phone.fill")
                        .foregroundStyle(Color(hex: 0x808080))
                        .onTapGesture {
                            withAnimation {
                                
                            }
                        }
                        .scaleEffect(1.0, anchor: .center)
                        .animation(.interpolatingSpring(stiffness: 100, damping: 10).delay(0.4))
                        

                }
                .frame(width: 54, height: 54)
                .clipShape(RoundedRectangle(cornerRadius: 14))
                .overlay(
                    RoundedRectangle(cornerRadius: 14)
                        .stroke(Color(hex: 0xDEDEDE))
                )
            }
            .padding()
            
            Button(action: {
                isOpen = false
            }) {
                Text("Fechar")
                    .fontWeight(.semibold)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color(hex: 0xC67C4E))
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 18))
            }
        }
        .background(Color.white)
        .cornerRadius(20)
        .padding()
    }
}

struct DeliveryView_Previews: PreviewProvider {
    static var previews: some View {
        DeliveryView()
    }
}

