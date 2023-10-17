//
//  OnboardingParagraphView.swift
//  CoffeeShop
//
//  Created by André Filipe Fonsêca Borba on 16/10/23.
//

import SwiftUI

struct OnboardingParagraphView: View {
    var body: some View {
        Text("The best grain, the finest roast, the powerful flavor.")
            .font(.system(size: 20, weight: .bold, design: .rounded))
            .foregroundColor(Color(UIColor(hex: 0xA9A9A9)))
            .multilineTextAlignment(.center)
            .padding(.horizontal, 16)
    }
}

#Preview {
    OnboardingParagraphView()
}
