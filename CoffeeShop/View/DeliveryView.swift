//
//  DeliveryView.swift
//  CoffeeShop
//
//  Created by André Filipe Fonsêca Borba on 23/10/23.
//

import SwiftUI
import MapKit

struct DeliveryView: View {
    @State private var coordinate = CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194) // Example coordinates for San Francisco, CA
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    
    var body: some View {
        Map(coordinateRegion: $region)
            .frame(height: 560)
            .ignoresSafeArea()
        VStack(spacing: 6) {
            Text("10 minutes left")
                .foregroundStyle(Color(hex: 0x303336))
                .fontWeight(.semibold)
            
            Text("Delivery to")
                .foregroundStyle(Color(hex: 0x808080))
            Text("Jl. Kpg Sutoyo")
                .foregroundStyle(Color(hex: 0x303336))
            
            HStack {
                Divider()
                    .foregroundColor(.clear)
                    .frame(maxWidth: 100, maxHeight: 10)
                    .background(Color(red: 0.21, green: 0.75, blue: 0.49))
                    .cornerRadius(20)
                Divider()
                    .foregroundColor(.clear)
                    .frame(maxWidth: 100, maxHeight: 10)
                    .background(Color(red: 0.21, green: 0.75, blue: 0.49))
                    .cornerRadius(20)
                Divider()
                    .foregroundColor(.clear)
                    .frame(maxWidth: 100, maxHeight: 10)
                    .background(Color(red: 0.21, green: 0.75, blue: 0.49))
                    .cornerRadius(20)
                Divider()
                    .foregroundColor(.clear)
                    .frame(maxWidth: 100, maxHeight: 10)
                    .background(.gray)
                    .cornerRadius(20)
            }
            
            HStack(alignment: .center) {
                Image(systemName: "bicycle")
                    .frame(width: 32, height: 32)
                    .foregroundStyle(Color(hex: 0xC67C4E))
                
                VStack(alignment: .leading) {
                    Text("Delivered your order")
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(hex: 0x303336))
                        .foregroundStyle(Color(hex: 0x303336))
                    Text("We deliver your goods to you in the shortes possible time.")
                        .foregroundStyle(Color(hex: 0x808080))
                }
                .padding(12)
            }
            
            HStack {
                Image("profile")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 54, height: 54)
                    .clipped()
                    .clipShape(RoundedRectangle(cornerRadius: 18))
                
                VStack {
                    Text("André Borba")
                    Text("iOS Engineer")
                }
                
                Spacer()
                
                Image(systemName: "phone.connection")
                    .frame(width: 54, height: 54)
                    .foregroundStyle(Color(hex: 0x808080))
                    .padding(.horizontal)
                    .overlay(
                        RoundedRectangle(cornerRadius: 18)
                            .inset(by: 0.5)
                            .stroke(Color(red: 0.87, green: 0.87, blue: 0.87))
                    )
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .padding(.top)
        .frame(width: 375, height: 322)
    }
}


#Preview {
    DeliveryView()
}
