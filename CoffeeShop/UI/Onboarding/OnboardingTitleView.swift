//
//  OnboardingTitleView.swift
//  CoffeeShop
//
//  Created by André Filipe Fonsêca Borba on 16/10/23.
//

import SwiftUI

struct OnboardingTitleView: View {
    var body: some View {
        Text("Café tão bom que suas papilas gustativas vão adorar")
                .font(.system(size: 40, weight: .bold, design: .rounded))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 16)
                .padding(.top, 38)
                .shadow(color: .black, radius: 4, x: 0, y: 4)
    }
}

#Preview {
    OnboardingTitleView()
}
