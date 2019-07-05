//
//  HomeVc.swift
//  FLAVR-RECIPE
//
//  Created by Mahesh Prasad on 04/07/19.
//  Copyright © 2019 CreatesApps. All rights reserved.
//

import UIKit

class HomeVc: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let recipeCell = UINib.init(nibName: "ReceipeCell", bundle: nil)
        self.tableView.register(recipeCell, forCellReuseIdentifier: "ReceipeCell")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 20
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 260
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReceipeCell", for: indexPath) as! ReceipeCell
        return cell
    }

}
