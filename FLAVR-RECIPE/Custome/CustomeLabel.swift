//
//  CustomeLabel.swift
//  FLAVR-RECIPE
//
//  Created by Mahesh Prasad on 03/07/19.
//  Copyright © 2019 CreatesApps. All rights reserved.
//

import UIKit

class CustomeLabel: UILabel {

    //First load func
    override init(frame: CGRect) {
        super.init(frame: frame)
        defaultSetup()
    }

    //First required to load
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        defaultSetup()
    }
    
    //Sets up the default spacing
    //to 1
    func defaultSetup(){
        //Label Spacing
        //LABEL Spacing
        let labelSpace = 1
        let labelAttributedString = NSMutableAttributedString(string: text!)
        labelAttributedString.addAttribute(NSAttributedString.Key.kern, value: labelSpace, range: NSMakeRange(0, labelAttributedString.length))
        attributedText = labelAttributedString
    }
    
    //Set the spacing of text
    func setSpacing(space: CGFloat){
        let labelAttributedString = NSMutableAttributedString(string: text!)
        labelAttributedString.addAttribute(NSAttributedString.Key.kern, value: space, range: NSMakeRange(0, labelAttributedString.length))
        attributedText = labelAttributedString
    }
}
