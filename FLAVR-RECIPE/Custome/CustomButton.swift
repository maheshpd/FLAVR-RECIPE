//
//  CustomButton.swift
//  FLAVR-RECIPE
//
//  Created by Mahesh Prasad on 30/06/19.
//  Copyright © 2019 CreatesApps. All rights reserved.
//

import UIKit

class CustomButton: UIButton {
    //First loading func
    override init(frame: CGRect) {
        super.init(frame: frame)
        defaultSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        defaultSetup()
    }
    
    func defaultSetup() {
        layer.backgroundColor = UIColor.orange.cgColor
        layer.cornerRadius = layer.frame.height/2
        layer.masksToBounds = true
        
        //spacing
        let spacing = 1.5
        let buttonAttributedString = NSMutableAttributedString(string: (titleLabel?.text)!)
        buttonAttributedString.addAttribute(NSAttributedString.Key.kern, value: spacing, range: NSMakeRange(0, buttonAttributedString.length))
        self.setAttributedTitle(buttonAttributedString, for: .normal)
    }
    
    func makeCustomeWhiteButton(){
        //SIGN UP BUTTON
        layer.borderWidth = 2
        backgroundColor = UIColor.white
        layer.borderColor = UIColor.orange.cgColor
        layer.cornerRadius = layer.frame.height/2
        layer.masksToBounds = true
        //Spacing for sign Up Button
        let signupspacing = 1.5
        let signupSpacingbuttonAttributedString = NSMutableAttributedString(string: (titleLabel?.text)!)
        signupSpacingbuttonAttributedString.addAttribute(NSAttributedString.Key.kern, value: signupspacing, range: NSMakeRange(0, signupSpacingbuttonAttributedString.length))
        self.setAttributedTitle(signupSpacingbuttonAttributedString, for: .normal)
    }
    
}
