//
//  Carousel.swift
//  CoffeeShop
//
//  Created by André Filipe Fonsêca Borba on 23/10/23.
//

import SwiftUI

struct Carousel: View {
    @State private var selectedPageIndex = 0
    @State private var selectedCoffee: coffeeTypes?
    
    let coffeeTypeArray: [coffeeTypes] = [
        .Espresso,
        .Cappuccino,
        .Latte,
        .Americano,
        .Mocha,
        .Macchiato,
        .Turkish,
        .French,
        .ColdBrew,
        .Affogato
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 6) {
                ForEach(coffeeTypeArray, id: \.self) { coffeeType in
                    Button(action: {
                        selectedCoffee = coffeeType
                    }) {
                        Text(coffeeType.rawValue)
                            .frame(width: 120, height: 50)
                            .foregroundStyle(Color(hex: 0x2F4B4E))
                            .background(coffeeType == selectedCoffee ? Color(UIColor(hex: 0xC67C4E)) : Color.white)
                            .clipShape(RoundedRectangle(cornerRadius: 18, style: .continuous))
                    }
                    
                    if coffeeType != coffeeTypeArray.last {
                        Divider()
                            .frame(width: 5, height: 50)
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    Carousel()
}

enum coffeeTypes: String {
    case Espresso
    case Cappuccino
    case Latte
    case Americano
    case Mocha
    case Macchiato
    case Turkish
    case French
    case ColdBrew
    case Affogato
}
