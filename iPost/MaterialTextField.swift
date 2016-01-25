//
//  MaterialTextField.swift
//  iPost
//
//  Created by Jonathan Velazquez on 22/01/16.
//  Copyright © 2016 Jonathan Velazquez. All rights reserved.
//

import Foundation
import UIKit
import Spring


@IBDesignable
class MaterialTextField: SpringTextField {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        
        setupView()
    }
    
    
    
    @IBInspectable var iconImage: UIImage = UIImage() {
        didSet{
            setupView()
        }
    }
    
    
    @IBInspectable var placeholderText: String = "" {
        didSet{
            setupView()
        }
    }
    
    @IBInspectable var placeholderColor: UIColor = UIColor.grayColor() {
        didSet{
            setupView()
        }
    }
    
    
    
    
    func setupView(){
       
        let leftView = UIView(frame: CGRect(x: 0, y: 0, width: 60, height: 40))
        leftView.backgroundColor = UIColor.clearColor()
        
        let icon = UIImageView(frame: CGRect(x: 10, y: 9, width: 22, height: 22))
        
        icon.image = iconImage
        
        leftView.addSubview(icon)
        
        self.leftView = leftView
        self.leftViewMode = .Always
        
        
        
        
        
        self.attributedPlaceholder = NSAttributedString(string: placeholderText, attributes: [NSForegroundColorAttributeName: placeholderColor])
        
    }

    
}




























