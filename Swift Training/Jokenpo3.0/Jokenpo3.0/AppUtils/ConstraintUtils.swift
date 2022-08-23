
import UIKit

extension UIView {
    
    func heightAnchorOnSuperview(_ constant: CGFloat = 64) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        
        return self.heightAnchor.constraint(equalToConstant: constant)
    }
    
    func fillSuperview(_ constant: CGFloat = 0) {
        translatesAutoresizingMaskIntoConstraints = false
        
        superview?.addConstraint(NSLayoutConstraint(item: self,
                                                    attribute: .top,
                                                    relatedBy: .equal,
                                                    toItem: superview,
                                                    attribute: .top,
                                                    multiplier: 1,
                                                    constant: constant))
        superview?.addConstraint(NSLayoutConstraint(item: self,
                                                    attribute: .bottom,
                                                    relatedBy: .equal,
                                                    toItem: superview,
                                                    attribute: .bottom,
                                                    multiplier: 1,
                                                    constant: -constant))
        superview?.addConstraint(NSLayoutConstraint(item: self,
                                                    attribute: .leading,
                                                    relatedBy: .equal,
                                                    toItem: superview,
                                                    attribute: .leading,
                                                    multiplier: 1,
                                                    constant: constant))
        superview?.addConstraint(NSLayoutConstraint(item: self,
                                                    attribute: .trailing,
                                                    relatedBy: .equal,
                                                    toItem: superview,
                                                    attribute: .trailing,
                                                    multiplier: 1,
                                                    constant: -constant))
    }
    
    func constraintInsideTo(_ toItem: Any?,
                            _ attribute: NSLayoutConstraint.Attribute,
                            _ constant: CGFloat = 0) -> NSLayoutConstraint {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if attribute == .trailing || attribute == .bottom {
            
            return NSLayoutConstraint(item: self,
                                      attribute: attribute,
                                      relatedBy: .equal,
                                      toItem: toItem,
                                      attribute: attribute,
                                      multiplier: 1,
                                      constant: -constant)
            
        }
        
        return NSLayoutConstraint(item: self,
                                  attribute: attribute,
                                  relatedBy: .equal,
                                  toItem: toItem,
                                  attribute: attribute,
                                  multiplier: 1,
                                  constant: constant)
    }
    
    func constraintOutsideTo(_ toItem: Any?,
                             _ attribute: NSLayoutConstraint.Attribute,
                             _ constant: CGFloat = 0) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        
        let itemAttribute: NSLayoutConstraint.Attribute
        
        switch attribute {
            
            case .top: itemAttribute = .bottom
            case .bottom: itemAttribute = .top
            case .leading: itemAttribute = .trailing
            case .trailing: itemAttribute = .leading
            default: return NSLayoutConstraint()
        }
        
        if attribute == .trailing || attribute == .bottom {
            
            return NSLayoutConstraint(item: self,
                                      attribute: attribute,
                                      relatedBy: .equal,
                                      toItem: toItem,
                                      attribute: itemAttribute,
                                      multiplier: 1,
                                      constant: -constant)
            
        }
        
        return NSLayoutConstraint(item: self,
                                  attribute: attribute,
                                  relatedBy: .equal,
                                  toItem: toItem,
                                  attribute: itemAttribute,
                                  multiplier: 1,
                                  constant: constant)
    }
}
