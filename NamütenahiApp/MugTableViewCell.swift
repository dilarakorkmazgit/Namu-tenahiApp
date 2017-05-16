//
//  MugTableViewCell.swift
//  NamütenahiApp
//
//  Created by Dilara Korkmaz on 16/05/2017.
//  Copyright © 2017 Dilara Korkmaz. All rights reserved.
//

import UIKit

class MugTableViewCell: UITableViewCell {

 
    @IBOutlet weak var mugImage: UIImageView!
    
    
    @IBOutlet weak var mugLabel: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
