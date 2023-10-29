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
            print("Tapped...")
        }, label: {
            Text("Get Started")
                
        })
    }
}

#Preview {
    OnboardingButtonView()
}
