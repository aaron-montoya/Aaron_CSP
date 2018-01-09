//
//  BucketItemCell.swift
//  Aaron_CSP
//
//  Created by Montoya, Aaron on 1/9/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

class BucketItemCell: UITableViewCell {

    @IBOutlet weak var bucketItemText : UILabel!
    @IBOutlet weak var bucketItemSymbol : UILabel!
    @IBOutlet weak var bucketItemSignature : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
