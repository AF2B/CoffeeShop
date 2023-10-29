//
//  HomeView.swift
//  CoffeeShop
//
//  Created by André Filipe Fonsêca Borba on 23/10/23.
//

import SwiftUI

struct HomeView: View {
    @State private var searchCoffee = ""
    let gridItems = [GridItem(.flexible(), spacing: 10), GridItem(.flexible(), spacing: 10)]

    
    var body: some View {
        ZStack {
            Color(hex: 0x131313)
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 12) {
                Text("Location")
                    .foregroundStyle(Color(hex: 0xB7B7B7))
                    .padding(.horizontal, 0)
                    .offset(CGSize(width: 0, height: 44))
                
                
                HStack {
                    Text("Bilzen, Tanjungbalai")
                        .foregroundStyle(Color(hex: 0xDDDDDD))
                    
                    Image(systemName: "chevron.down")
                        .foregroundStyle(.white)
                    
                    Spacer()
                    
                    Image("profile")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 64, height: 64)
                        .clipShape(RoundedRectangle(cornerRadius: 14, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
                }
                .offset(CGSize(width: 0, height: 18.0))
                
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundStyle(.white)
                    
                    TextField("Search coffee", text: $searchCoffee)
                    
                    Image(systemName: "slider.horizontal.3")
                        .frame(width: 44, height: 44)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .background(Color(hex: 0xC67C4E))
                        .foregroundStyle(.white)
                }
                .padding(.horizontal, 18)
                .frame(height: 60)
                .background(Color(hex: 0x989898))
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .offset(CGSize(width: 0, height: 36.0))
                
                Image("backgroundpnghome")
                    .offset(CGSize(width: 20, height: 92))
                
                Spacer()
            }
            .padding()
            
            Carousel()
                .offset(CGSize(width: 0, height: 280))
        }
        .frame(height: 300)
        .padding(.bottom, 88)
        Spacer()

        ScrollView {
            LazyVGrid(columns: gridItems, spacing: 256) {
                ForEach(0 ..< 10) {item in
                    CoffeeList()
                }
            }
        }
        .padding(.top, 88)
        .padding(.vertical, 14)
        
//        Spacer()
    }
}

#Preview {
    HomeView()
}

extension Color {
    init(hex: UInt) {
        self.init(
            .sRGB,
            red: Double((hex & 0xFF0000) >> 16) / 255.0,
            green: Double((hex & 0x00FF00) >> 8) / 255.0,
            blue: Double(hex & 0x0000FF) / 255.0,
            opacity: 1
        )
    }
}
