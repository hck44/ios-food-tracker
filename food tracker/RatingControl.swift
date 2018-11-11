//
//  RatingControl.swift
//  food tracker
//
//  Created by Macintosh on 03/11/2018.
//  Copyright © 2018 ck. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {

    override init(frame: CGRect) {
        super.init(frame : frame)
    }

    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private var ratingButtons = [UIButton]()
    private var buttonSize : CGSize = CGSize(width: 44.0, height: 44.0)
    
    //MARK: Set up button to stackview
    func setupButtons() {
        let button = UIButton()
        
        //button properties
        button.backgroundColor = UIColor.red
        button.translatesAutoresizingMaskIntoConstraints = true
        button.heightAnchor.constraint(equalToConstant: buttonSize.height).isActive = true
        button.widthAnchor.constraint(equalToConstant: buttonSize.width).isActive = true
        
        // Add the button to the stack
        addArrangedSubview(button)
        
        // Add the new button to the rating button array
        ratingButtons.append(button)
        
    }
}
