//
//  CategoryVC.swift
//  FLAVR-RECIPE
//
//  Created by Mahesh Prasad on 04/07/19.
//  Copyright © 2019 CreatesApps. All rights reserved.
//

import UIKit

class CategoryVC: UITableViewController {

    let item = ["APPETIZER","BREAKFAST & BRUNCH","DESSERT","BEVERAGES","MAIN DISH","PASTA","SALAD","SOUP"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return item.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath) as! CategoryCell
        cell.categoryLbl.text = item[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}
