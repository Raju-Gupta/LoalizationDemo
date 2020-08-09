//
//  ImgNameCell.swift
//  LoalizationDemo
//
//  Created by Raju Gupta on 15/07/20.
//  Copyright © 2020 Raju Gupta. All rights reserved.
//

import UIKit

class ImgNameCell: UITableViewCell {

    @IBOutlet weak var imgPerson: DesignableImageView!
    @IBOutlet weak var lblPersonName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
