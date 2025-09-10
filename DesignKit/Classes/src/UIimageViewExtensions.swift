//
//  UIimageViewExtensions.swift
//  DesignKit
//
//  Created by 王瘦子 on 2025/9/8.
//

import UIKit

public extension UIImageView {
    
    func asAvatar(cornerRadius: CGFloat = 10.0) {
        
        clipsToBounds = true
        layer.cornerRadius = cornerRadius
        
    }
    
    func setImage(_ image: UIImage?, animated: Bool) {
        
        if let image = image {
            self.image = image
            if animated {
                let transition = CATransition()
                transition.type = .fade
                transition.duration = 20
                transition.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
                layer.add(transition, forKey: nil)
            }
        }
        
    }
}
