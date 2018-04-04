//
//  LabelCubeTransition.swift
//  FieldValidationLib
//
//  Created by Mudith Chathuranga on 4/4/18.
//  Copyright © 2018 Chathuranga. All rights reserved.
//

import Foundation
import UIKit


struct LabelCubeTransition {
    
    static func cubeTransition(label: UILabel, text: String, direction: AnimationDirection) {
        
        let nextLabel = UILabel(frame: label.frame)
        nextLabel.text = text
        nextLabel.font = label.font
        nextLabel.textAlignment = label.textAlignment
        nextLabel.textColor = label.textColor
        nextLabel.backgroundColor = UIColor.clear//label.backgroundColor //Change Label Background Color
        
        let nextLabelOffset = CGFloat(direction.rawValue) *
            label.frame.size.height/2.0
        
        nextLabel.transform = CGAffineTransform(scaleX: 1.0, y: 0.1).concatenating(
            CGAffineTransform(translationX: 0.0, y: nextLabelOffset))
        
        label.superview?.addSubview(nextLabel)
        
        UIView.animate(withDuration: 2.0, delay: 0.0, options: .curveEaseOut,
                       animations: {
                        nextLabel.transform = CGAffineTransform.identity
                        label.transform = CGAffineTransform(scaleX: 1.0, y: 0.1).concatenating (
                            CGAffineTransform(translationX: 0.0, y: -nextLabelOffset))
        }, completion: {_ in
            label.text = nextLabel.text
            label.transform = .identity
            nextLabel.removeFromSuperview()
        }
        )
    }
    
}

enum AnimationDirection: Int {
    case fromBottom = 1
    case fromTop = -1
}
