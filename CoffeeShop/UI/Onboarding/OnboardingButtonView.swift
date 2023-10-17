//
//  OnboardingButtonView.swift
//  CoffeeShop
//
//  Created by André Filipe Fonsêca Borba on 16/10/23.
//

import SwiftUI

struct OnboardingButtonView: View {
    var body: some View {
        Button(action: {
            print("Button tapped")
        }, label: {
            Text("Get Started")
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .foregroundColor(.white)
                .frame(width: 280, height: 50)
                .background(Color(UIColor(hex: 0xC67C4E)))
                .cornerRadius(10)
                .shadow(color: .black, radius: 4, x: 0, y: 4)
        })
    }
}

#Preview {
    OnboardingButtonView()
}
