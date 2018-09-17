//
//  WheelPickerCell.swift
//  WheelPicker
//
//  Created by Dima on 17.02.17.
//  Copyright © 2017 Dima. All rights reserved.
//

import UIKit

open class WheelPickerCell : UICollectionViewCell {

    static public let identifier = "WheelPickerCell"
    
    open var label: UILabel!
    open var imageView: UIImageView!
    open var font: UIFont!
    open var highlightedFont: UIFont!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.isDoubleSided = false
        label = UILabel(frame: contentView.bounds)
        label.backgroundColor = UIColor.clear
        label.textAlignment = .center
        label.textColor = UIColor.gray
        label.numberOfLines = 1
        label.lineBreakMode = .byTruncatingTail
        label.highlightedTextColor = UIColor.black
        label.autoresizingMask = [.flexibleTopMargin, .flexibleLeftMargin, .flexibleBottomMargin, .flexibleRightMargin]
        contentView.addSubview(label)
        
        imageView = UIImageView(frame: contentView.bounds)
        imageView.backgroundColor = UIColor.clear
        imageView.contentMode = .center
        imageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        contentView.addSubview(imageView)
    }
    
    override open var isSelected: Bool {
        didSet {
            
            if oldValue == false {
                
                let transition = CATransition()
                transition.duration = 0.15
                transition.type = CATransitionType(rawValue: kCATransition)
                label.layer.add(transition, forKey: nil)
                label.font = isSelected ? highlightedFont : font
            }
        }
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override open func prepareForReuse() {
        super.prepareForReuse()
        
        label.text = ""
        imageView.image = nil
    }
}
