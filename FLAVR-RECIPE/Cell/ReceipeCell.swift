//
//  ReceipeCell.swift
//  FLAVR-RECIPE
//
//  Created by Mahesh Prasad on 04/07/19.
//  Copyright © 2019 CreatesApps. All rights reserved.
//

import UIKit

class ReceipeCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
