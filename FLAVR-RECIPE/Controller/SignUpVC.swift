//
//  SignUpVC.swift
//  FLAVR-RECIPE
//
//  Created by Mahesh Prasad on 03/07/19.
//  Copyright © 2019 CreatesApps. All rights reserved.
//

import UIKit

class SignUpVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
setUpProperties()
    }

    func setUpProperties(){
        navigationController?.navigationBar.layer.frame.origin.y = 22
    }
    
    
    @IBAction func backButtonTapped(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    //Hides the status bar
    override var prefersStatusBarHidden: Bool {
        return true
    }

}
