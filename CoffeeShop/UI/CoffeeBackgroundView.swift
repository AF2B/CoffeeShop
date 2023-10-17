//
//  CoffeeBackgroundView.swift
//  CoffeeShop
//
//  Created by André Filipe Fonsêca Borba on 16/10/23.
//

import SwiftUI

struct CoffeeBackgroundView: View {
    var body: some View {
        ZStack {
            Image("onboardingImage")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .ignoresSafeArea(.all)
        }
    }
}

#Preview {
    CoffeeBackgroundView()
}
