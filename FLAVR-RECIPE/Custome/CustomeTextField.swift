//
//  CustomeTextField.swift
//  FLAVR-RECIPE
//
//  Created by Mahesh Prasad on 03/07/19.
//  Copyright © 2019 CreatesApps. All rights reserved.
//

import UIKit

class CustomeTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        defaultSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
         defaultSetup()
    }
    
    func defaultSetup(){
        layer.borderWidth = 1
        layer.borderColor = UIColor(hexString: "#E0E0E0")?.cgColor
        attributedPlaceholder = NSAttributedString(string: placeholder!, attributes: [NSAttributedString.Key.foregroundColor : UIColor(hexString: "#9E9E9E")!])
        layer.sublayerTransform = CATransform3DMakeTranslation(12, 0, 0)
    }
}

extension UIColor {
    convenience init?(hexString: String) {
        var chars = Array(hexString.hasPrefix("#") ? hexString.dropFirst() : hexString[...])
        let red, green, blue, alpha: CGFloat
        switch chars.count {
        case 3:
            chars = chars.flatMap { [$0, $0] }
            fallthrough
        case 6:
            chars = ["F","F"] + chars
            fallthrough
        case 8:
            alpha = CGFloat(strtoul(String(chars[0...1]), nil, 16)) / 255
            red   = CGFloat(strtoul(String(chars[2...3]), nil, 16)) / 255
            green = CGFloat(strtoul(String(chars[4...5]), nil, 16)) / 255
            blue  = CGFloat(strtoul(String(chars[6...7]), nil, 16)) / 255
        default:
            return nil
        }
        self.init(red: red, green: green, blue:  blue, alpha: alpha)
    }
}
