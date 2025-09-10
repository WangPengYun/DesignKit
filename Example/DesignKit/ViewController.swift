//
//  ViewController.swift
//  DesignKit
//
//  Created by wangpengyun on 09/09/2025.
//  Copyright (c) 2025 wangpengyun. All rights reserved.
//

import UIKit
import DesignKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let largeTitle = UILabel(frame: CGRect(x: Spacing.spacing8, y: 98, width: self.view.bounds.size.width - Spacing.spacing16, height: 40))
        largeTitle.text = "这是大标题"
        largeTitle.textColor = UIColor.pyDesignKit.black
        largeTitle.font = UIFont.pyDesignKit.largeTitle1
        largeTitle.adjustsFontForContentSizeCategory = true
        self.view.addSubview(largeTitle)

        let bgView = UIView(frame: CGRect(x: Spacing.spacing16, y: Spacing.spacing48, width: self.view.bounds.size.width - Spacing.spacing32, height: 400))
        bgView.backgroundColor = UIColor.pyDesignKit.background
        self.view.addSubview(bgView)
        bgView.center = self.view.center
        
        let avatarImageView = UIImageView(frame: CGRect(x: Spacing.spacing16, y: Spacing.spacing32, width: 100, height: 100))
        avatarImageView.image = UIImage(named: "avatar.png")
        bgView.addSubview(avatarImageView)
        
        avatarImageView.asAvatar()
        
        
        let title = UILabel(frame: CGRect(x: Spacing.spacing8, y: avatarImageView.frame.maxY + Spacing.spacing16, width: bgView.bounds.size.width - Spacing.spacing16, height: 24))
        title.text = "这是标题"
        title.textColor = UIColor.pyDesignKit.primaryText
        title.font = UIFont.pyDesignKit.title4
        bgView.addSubview(title)
        
        let content = UILabel(frame: CGRect(x: Spacing.spacing8, y: title.frame.maxY + Spacing.spacing8, width: bgView.bounds.size.width - Spacing.spacing16, height: 60))
        content.text = "这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容"
        content.numberOfLines = 0
        content.textColor = UIColor.pyDesignKit.secondaryText
        content.font = UIFont.pyDesignKit.body
        bgView.addSubview(content)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

