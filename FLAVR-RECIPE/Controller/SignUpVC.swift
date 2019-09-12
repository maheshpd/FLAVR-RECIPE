//
//  SignUpVC.swift
//  FLAVR-RECIPE
//
//  Created by Mahesh Prasad on 03/07/19.
//  Copyright © 2019 CreatesApps. All rights reserved.
//

import UIKit

class SignUpVC: UIViewController {

   
    @IBOutlet weak var userName: CustomeTextField!
    @IBOutlet weak var userEmail: CustomeTextField!
    @IBOutlet weak var userPassword: CustomeTextField!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var createAccountBtnTapped: CustomButton!
    
    
    
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

    @IBAction func createbtnTapped(_ sender: CustomButton) {
        
        if userName.text?.count == 0 {
            alertControll(title: "User Name", message: "Please enter user name")
        } else if userEmail.text?.count == 0 {
            alertControll(title: "Email", message: "Please enter email")
        } else if userPassword.text?.count == 0 {
            alertControll(title: "Password", message: "Please enter password")
        } else {
            activityIndicator.isHidden = false
            activityIndicator.startAnimating()
            let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
            if   let tabbarVC = storyboard.instantiateViewController(withIdentifier: "TabBarVC") as? TabBarVC {
                self.present(tabbarVC, animated: true, completion: nil)
            }
        }
        
    }
    
    func alertControll(title: String , message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        alertController.addAction(defaultAction)
        self.present(alertController, animated: true, completion: nil)
    }
}
