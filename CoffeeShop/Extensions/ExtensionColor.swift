//
//  ExtensionColor.swift
//  CoffeeShop
//
//  Created by André Filipe Fonsêca Borba on 16/10/23.
//

import Foundation
import UIKit

extension UIColor {
    convenience init(hex: Int) {
        self.init(
            red: CGFloat((hex & 0xFF0000) >> 16) / 255,
            green: CGFloat((hex & 0x00FF00) >> 8) / 255,
            blue: CGFloat(hex & 0x0000FF) / 255,
            alpha: 1.0
        )
    }
}
