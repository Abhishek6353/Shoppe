//
//  Fonts.swift
//  Shoppe
//
//  Created by Abhishek on 26/08/24.
//

import UIKit

enum Fonts: String {
    
    case nunitoSansRegular = "12pt ExtraLight Regular"
    case nunitoSansBlack = "12pt ExtraLight Black"
    case nunitoSansBold = "12pt ExtraLight Bold"
    case nunitoSansExtraBold = "12pt ExtraLight ExtraBold"
    case nunitoSansLight = "12pt ExtraLight Light"
    case nunitoSansMedium = "pt ExtraLight Medium"
    case nunitoSansSemiBold = "12pt ExtraLight SemiBold"
    
    func font(size: CGFloat) -> UIFont {
        guard let font = UIFont(name: self.rawValue, size: size) else {
            assertionFailure("Font not loaded.")
            return .systemFont(ofSize: size)
        }
        return font
    }
}
