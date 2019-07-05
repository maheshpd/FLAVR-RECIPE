//
//  CustomeNavigationController.swift
//  FLAVR-RECIPE
//
//  Created by Mahesh Prasad on 03/07/19.
//  Copyright © 2019 CreatesApps. All rights reserved.
//

import UIKit

class CustomeNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        makeBarInvisible()
        
    }

    //Makes the Navigation Bar
    //Invisible and clear
    func makeBarInvisible(){
        navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationBar.shadowImage = UIImage()
        navigationBar.isTranslucent = true
    }
}
