//
//  BorderedButton.swift
//  iPost
//
//  Created by Jonathan Velazquez on 22/01/16.
//  Copyright © 2016 Jonathan Velazquez. All rights reserved.
//

import Foundation
import UIKit
import Spring


@IBDesignable
class BorderedButton: SpringButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupView()
    }
    
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet{
            setupView()
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clearColor() {
        didSet{
            setupView()
        }
    }
    
    @IBInspectable var borderRadius: CGFloat = 0 {
        didSet{
            setupView()
        }
    }
    
    
    func setupView(){
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor.CGColor
        self.layer.cornerRadius = borderRadius
        self.backgroundColor = UIColor.clearColor()
    }
    
}




























