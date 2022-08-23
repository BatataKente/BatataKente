//
//  Cell.swift
//  Jokenpo3.0
//
//  Created by Josicleison on 11/07/22.
//

import UIKit

let cellIdentifier = "Cell"

class Cell: UICollectionViewCell {
    
    lazy var imageView = UIImageView(frame: contentView.frame)
    
    override init(frame: CGRect) {

        super.init(frame: frame)

        contentView.addSubview(imageView)
    }
    
    required init?(coder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
    }
}
