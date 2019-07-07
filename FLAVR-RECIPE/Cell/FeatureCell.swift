//
//  FeatureCell.swift
//  FLAVR-RECIPE
//
//  Created by Mahesh Prasad on 07/07/19.
//  Copyright © 2019 CreatesApps. All rights reserved.
//

import UIKit

class FeatureCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
