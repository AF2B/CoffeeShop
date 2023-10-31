import SwiftUI

struct Carousel: View {
    @State private var selectedCoffee: CoffeeTypes?
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 6) {
                ForEach(CoffeeTypes.allCases, id: \.self) { coffeeType in
                    Button(action: {
                        selectedCoffee = coffeeType
                    }) {
                        buttonStyle(for: coffeeType)
                    }
                    
                    if coffeeType != CoffeeTypes.allCases.last {
                        Divider()
                            .frame(width: 5, height: 50)
                    }
                }
            }
            .padding()
        }
    }
    
    func buttonStyle(for coffeeType: CoffeeTypes) -> some View {
        Text(coffeeType.rawValue)
            .frame(width: 120, height: 50)
            .foregroundStyle(coffeeType == selectedCoffee ? Color(.white) : Color(hex: 0x2F4B4E))
            .background(coffeeType == selectedCoffee ? Color(UIColor(hex: 0xC67C4E)) : Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 18, style: .continuous))
    }
}

struct Carousel_Previews: PreviewProvider {
    static var previews: some View {
        Carousel()
    }
}

enum CoffeeTypes: String, CaseIterable {
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
