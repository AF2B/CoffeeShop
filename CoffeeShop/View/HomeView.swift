//
//  HomeView.swift
//  CoffeeShop
//
//  Created by André Filipe Fonsêca Borba on 23/10/23.
//

import SwiftUI

struct HomeView: View {
    @State private var searchText = "Algum café em mente? 🤔"
    @State private var coffeeName = "Cappucino"
    @State private var coffeeWith = "com Chocolate"
    @State private var isProfileViewPresented = false
    
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(hex: 0x131313)
                    .edgesIgnoringSafeArea(.top)
                
                VStack {
                    HStack() {
                        VStack(alignment: .leading) {
                            Text("Localização")
                                .foregroundStyle(Color(hex: 0xB7B7B7))
                            
                            HStack {
                                Text("Recife, Brasil")
                                    .foregroundStyle(Color(hex: 0xDDDDDD))
                                Image(systemName: "chevron.down")
                                    .foregroundStyle(Color(hex: 0xFFFFFF))
                            }
                        }
                        
                        Spacer()
                        
                        NavigationLink(destination: ProfileView(), isActive: $isProfileViewPresented) {
                            EmptyView()
                        }
                        
                        Image("merecent")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 44, height: 44)
                            .clipShape(RoundedRectangle(cornerRadius: 18))
                            .onTapGesture {
                                isProfileViewPresented = true
                            }
                    }
                    .padding()
                    .padding(.horizontal)
                    .offset(y: -58)
                    
                    SearchBar(searchText: $searchText)
                        .offset(y: -44)
                }
                
                Image("backgroundpnghome")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 315, height: 140)
                    .offset(y: 140)
                
                Carousel()
                    .offset(y: 260)
                
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible(), spacing: 6)], spacing: 6) {
                        ForEach(0..<21) { coffee in
                            NavigationLink(destination: DetailItemView()) {
                                CoffeeList(coffeeName: $coffeeName, coffeeWith: $coffeeWith)
                            }
                        }
                    }
                }
                .offset(y: 420)
            }
            .frame(height: 280)
            .offset(y: -240)
        }
        .navigationBarBackButtonHidden(true)
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

struct Coffee: Identifiable, Codable {
    var id = UUID()
    var type: String
    var name: String
    var description: String
    var price: Double
    var rating: Double
}
