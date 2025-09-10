//
//  UIFontExtensions.swift
//  DesignKit
//
//  Created by 王瘦子 on 2025/9/8.
//

import UIKit

public extension UIFont {
    
    static let pyDesignKit = PYDesignKitFontStyle()
    
    struct PYDesignKitFontStyle {
        
        public var largeTitle1: UIFont {
            scaled(baseFont: .systemFont(ofSize: 40, weight: .semibold), for: .largeTitle, maximumFactor: 1.5)
        }
        
        public var largeTitle2: UIFont {
            scaled(baseFont: .systemFont(ofSize: 34, weight: .semibold), for: .largeTitle, maximumFactor: 1.5)
        }
        
        public var title1: UIFont {
            scaled(baseFont: .systemFont(ofSize: 28, weight: .semibold), for: .title1)
        }
        
        public var title2: UIFont {
            scaled(baseFont: .systemFont(ofSize: 22, weight: .semibold), for: .title2)
        }
        
        public var title3: UIFont {
            scaled(baseFont: .systemFont(ofSize: 20, weight: .semibold), for: .title3)
        }
        
        public var title4: UIFont {
            scaled(baseFont: .systemFont(ofSize: 20, weight: .medium), for: .headline)
        }
        
        public var headline: UIFont {
            scaled(baseFont: .systemFont(ofSize: 16, weight: .semibold), for: .headline)
        }
        
        public var blodBody: UIFont {
            scaled(baseFont: .systemFont(ofSize: 16, weight: .semibold), for: .body)
        }
        
        public var body: UIFont {
            scaled(baseFont: .systemFont(ofSize: 16, weight: .regular), for: .body)
        }
        
        public var blodCaption: UIFont {
            scaled(baseFont: .systemFont(ofSize: 14, weight: .semibold), for: .caption1)
        }
        
        public var caption: UIFont {
            scaled(baseFont: .systemFont(ofSize: 14, weight: .regular), for: .caption1)
        }
        
        public var small: UIFont {
            scaled(baseFont: .systemFont(ofSize: 12, weight: .light), for: .footnote)
        }
    }
}

private extension UIFont.PYDesignKitFontStyle {
    
    func scaled(baseFont: UIFont, for textStyle: UIFont.TextStyle = .body, maximumFactor: CGFloat? = nil) -> UIFont {
        
        let fontMetrics = UIFontMetrics(forTextStyle: textStyle)
        
        if let maximumFactor = maximumFactor {
            let maximumPointSize = baseFont.pointSize * maximumFactor
            return fontMetrics.scaledFont(for: baseFont, maximumPointSize: maximumPointSize)
        }
        return fontMetrics.scaledFont(for: baseFont)
    }
    
}
