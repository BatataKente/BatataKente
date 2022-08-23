//
//  LabelUtils.swift
//  Jokenpo3.0
//
//  Created by Josicleison on 11/07/22.
//

import UIKit

extension UILabel {
    
    func defaultText(size: CGFloat = 30, weight: UIFont.Weight = .bold) {
        
        self.textColor = .white
        self.textAlignment = .center
        self.font = UIFont.systemFont(ofSize: size, weight: weight)
    }
}
