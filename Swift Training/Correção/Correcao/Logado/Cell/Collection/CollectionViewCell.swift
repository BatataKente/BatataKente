//
//  CollectionViewCell.swift
//  Correcao
//
//  Created by Josicleison Elves on 05/06/22.
//

import UIKit

class CollectionViewCell: UICollectionViewCell
{
    @IBOutlet weak var collectionViewImage: UIImageView!
    
    @IBOutlet weak var collectionViewTitle: UILabel!
    @IBOutlet weak var collectionViewBody: UILabel!
    @IBOutlet weak var collectionViewUserId: UILabel!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
    }
}
