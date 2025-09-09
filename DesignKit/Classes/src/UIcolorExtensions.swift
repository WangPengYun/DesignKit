//
//  UIcolorExtensions.swift
//  pdride_ios
//
//  Created by 王瘦子 on 2025/9/8.
//

import UIKit

public extension UIColor {
    
    static let pyDesignKit = PYDesignKitColors.self
    
    enum PYDesignKitColors {
        
        public static let primary: UIColor = UIColor(hexString: "#0095B6")
        public static let black: UIColor = UIColor(hexString: "#000000")
        public static let white: UIColor = UIColor(hexString: "#FFFFFF")
        public static let background: UIColor = UIColor(hexString: "#F8F8F8")
        public static let line: UIColor = UIColor(hexString: "#EEEEEE")
        public static let primaryText: UIColor = UIColor(hexString: "#333333")
        public static let secondaryText: UIColor = UIColor(hexString: "#666666")
        public static let tertiaryText: UIColor = UIColor(hexString: "#999999")

    }
    
    static private func dynamicColor(light: UIColor, dark: UIColor) -> UIColor {
        return UIColor { $0.userInterfaceStyle == .light ? light : dark }
    }
    
}

public extension UIColor {
    
    convenience init(hexString: String) {
        
        var hex = hexString
        hex = hex.replacingOccurrences(of: "0x", with: "")
        hex = hex.replacingOccurrences(of: "#", with: "")
        
        assert(hex.count == 6, "Invalid hex code.")

        var rgb: UInt64 = 0
        Scanner(string: hexString).scanHexInt64(&rgb)
    
        let components = (
            R: CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
            G: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
            B: CGFloat(rgb & 0x0000FF) / 255.0
        )
        
        self.init(red: components.R, green: components.G, blue: components.B, alpha: 1.0)
        
    }
    
    convenience init(hex: Int) {
                
        let components = (
            R: CGFloat((hex & 0xFF0000) >> 16) / 255.0,
            G: CGFloat((hex & 0x00FF00) >> 8) / 255.0,
            B: CGFloat(hex & 0x0000FF) / 255.0
        )
        
        self.init(red: components.R, green: components.G, blue: components.B, alpha: 1.0)
    }
    
    convenience init(red: Int, green: Int, blue: Int) {
        
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        let components = (
            R: CGFloat(red) / 255.0,
            G: CGFloat(green) / 255.0,
            B: CGFloat(blue) / 255.0,
        )
        
        self.init(red: components.R, green: components.G, blue: components.B, alpha: 1.0)
    }
    
}
