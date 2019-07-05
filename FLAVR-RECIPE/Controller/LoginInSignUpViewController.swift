//
//  LoginInSignUpViewController.swift
//  FLAVR-RECIPE
//
//  Created by Mahesh Prasad on 29/06/19.
//  Copyright © 2019 CreatesApps. All rights reserved.
//

import UIKit

class LoginInSignUpViewController: UIViewController {

    //UI View Properties
    @IBOutlet weak var loginButton: CustomButton!
    @IBOutlet weak var signUpButton: CustomButton!
    @IBOutlet weak var dontHaveAccountLabel: UILabel!
    
    @IBOutlet weak var flavrLabel: CustomeLabel!
    
    //First loading func
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpProperties()
        
    }
    
    func setUpProperties() {
        
        signUpButton.makeCustomeWhiteButton()
        flavrLabel.setSpacing(space: 1.7)
    }
    
    //Hides the status bar
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
}
