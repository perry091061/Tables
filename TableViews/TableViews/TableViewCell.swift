//
//  TableViewCell.swift
//  TableViews
//
//  Created by Perry Davies on 20/01/2018.
//  Copyright © 2018 Perry Davies. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var title:UILabel!
    @IBOutlet weak var subTitle: UILabel!
    @IBOutlet weak var aimageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
