//
//  LoginVC.swift
//  FLAVR-RECIPE
//
//  Created by Mahesh Prasad on 03/07/19.
//  Copyright © 2019 CreatesApps. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var btnLogin: CustomButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpProperties()
        activityIndicator.isHidden = true
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
    
    
    @IBAction func btnLoginTapped(_ sender: CustomButton) {
        
        if emailTextField.text?.count == 0 {
            let alertController = UIAlertController(title: "Email", message: "Please enter email id", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
        } else if passwordTextField.text?.count == 0 {
            let alertController = UIAlertController(title: "Password", message: "Please enter password", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
            
        }else {
            activityIndicator.isHidden = false
            activityIndicator.startAnimating()
            
            let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
            if   let tabbarVC = storyboard.instantiateViewController(withIdentifier: "TabBarVC") as? TabBarVC {
                self.present(tabbarVC, animated: true, completion: nil)
            }
        }
       
    }
    
    
    
}

