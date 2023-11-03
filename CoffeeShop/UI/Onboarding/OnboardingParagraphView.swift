//
//  OnboardingParagraphView.swift
//  CoffeeShop
//
//  Created by André Filipe Fonsêca Borba on 16/10/23.
//

import SwiftUI

struct OnboardingParagraphView: View {
    var body: some View {
        Text("O melhor grão, a torra mais refinada, o sabor poderoso.")
            .font(.system(size: 20, weight: .bold, design: .rounded))
            .foregroundColor(Color(UIColor(hex: 0xA9A9A9)))
            .multilineTextAlignment(.center)
            .padding(.horizontal, 16)
    }
}

#Preview {
    OnboardingParagraphView()
}
