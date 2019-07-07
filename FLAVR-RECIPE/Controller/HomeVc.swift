//
//  HomeVc.swift
//  FLAVR-RECIPE
//
//  Created by Mahesh Prasad on 04/07/19.
//  Copyright © 2019 CreatesApps. All rights reserved.
//

import UIKit

class HomeVc: UITableViewController {

    let sections = ["FEATURED RECIPES","LATEST"]
    let items = [["Pasta"],["pasta","pasta","pasta","pasta"]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let recipeCell = UINib.init(nibName: "ReceipeCell", bundle: nil)
        self.tableView.register(recipeCell, forCellReuseIdentifier: "ReceipeCell")
        
        //festure cell
        let featurecell2 = UINib.init(nibName: "FeatureCell", bundle: nil)
        self.tableView.register(featurecell2, forCellReuseIdentifier: "FeatureCell")
        
        //header view
        let headerView = UINib.init(nibName: "HeaderView", bundle: nil)
       self.tableView.register(headerView, forHeaderFooterViewReuseIdentifier: "HeaderView")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return sections.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return items[section].count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        guard let section = CellSection(rawValue: indexPath.section) else {
            return 0
        }
        
        switch section {
        case .featured:
            return 160
        case .latest:
            return 260
            
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        if let section = CellSection(rawValue: indexPath.section) {
            switch section {
            case .featured:
                // featured cell
                
                let cell = tableView.dequeueReusableCell(withIdentifier: "FeatureCell", for: indexPath) as! FeatureCell
                return cell
            case .latest:
                let cell = tableView.dequeueReusableCell(withIdentifier: "ReceipeCell", for: indexPath) as! ReceipeCell
                return cell
            }
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let featureCell = cell as? FeatureCell
        featureCell?.collectionView.delegate = self
        featureCell?.collectionView.dataSource = self
        
        let collectionViewCellNib = UINib.init(nibName: "FeaturedCollectionCell", bundle: nil)
        featureCell?.collectionView.register(collectionViewCellNib, forCellWithReuseIdentifier: "CollectionCell")
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "HeaderView") as! HeaderView
        headerView.headerLabel.text = sections[section]
        return headerView
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 45
    }

}

extension HomeVc: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! FeaturedCollectionCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = CGSize(width: 250, height: 120)
        return size
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 16, bottom: 20, right: 16)
    }
    
    
}

enum CellSection: Int {
    case featured = 0, latest
}
