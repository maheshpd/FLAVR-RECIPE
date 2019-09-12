//
//  SplashVC.swift
//  FLAVR-RECIPE
//
//  Created by Mahesh Prasad on 18/07/19.
//  Copyright © 2019 CreatesApps. All rights reserved.
//

import UIKit

class SplashVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5, execute: {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            if let walkthroughViewController = storyboard.instantiateViewController(withIdentifier: "CustomeNavigationController") as? CustomeNavigationController {
                self.present(walkthroughViewController, animated: true, completion: nil)
            }
        })
        
    }
        
}
