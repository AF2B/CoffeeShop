//
//  OnboardingView.swift
//  CoffeeShop
//
//  Created by André Filipe Fonsêca Borba on 16/10/23.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("backgroundjpg")
                    .resizable()
                    .ignoresSafeArea()
                
                VStack(alignment: .center, spacing: 10) {
                    Spacer()
                    
                    OnboardingTitleView()
                    
                    OnboardingParagraphView()
                    
                    NavigationLink(destination: HomeView()) {
                        Text("Get Started")
                            .font(.system(size: 20, weight: .bold, design: .rounded))
                            .foregroundColor(.white)
                            .frame(width: 280, height: 70)
                            .background(Color(UIColor(hex: 0xC67C4E)))
                            .cornerRadius(10)
                            .shadow(color: .black, radius: 4, x: 0, y: 4)
                    }
                }
                .padding(.bottom, 32)
            }
        }
    }
}

#Preview {
    OnboardingView()
}
