//
//  OnboardingView.swift
//  CoffeeShop
//
//  Created by André Filipe Fonsêca Borba on 16/10/23.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea(.all)
            VStack {
                CoffeeBackgroundView()
                OnboardingTitleView()
                OnboardingParagraphView()
                OnboardingButtonView()
            }
            .offset(y: -88)
        }
    }
}

#Preview {
    OnboardingView()
}
