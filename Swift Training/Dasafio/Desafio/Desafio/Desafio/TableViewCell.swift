//
//  TableViewCell.swift
//  Desafio
//
//  Created by Josicleison Elves on 29/04/22.
//

import UIKit

class TableViewCell: UITableViewCell
{
    var user = ["Josicleison":"123"]
    
    @IBOutlet weak var storeUsername: UILabel!
    @IBOutlet weak var storePassword: UILabel!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        for (username,password) in user
        {
            storeUsername.text = username
            storePassword.text = password
        }
        
        super.setSelected(selected, animated: animated)
    }
    
}
