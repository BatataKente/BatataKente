//
//  TableViewCell.swift
//  TableView
//
//  Created by Evandro Rodrigo Minamoto on 26/04/22.
//

import UIKit

class CardCell: UITableViewCell {

    @IBOutlet weak var imageViewCard: UIImageView!
    
    @IBOutlet weak var labelName: UILabel!
    
    @IBOutlet weak var labelOffice: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
