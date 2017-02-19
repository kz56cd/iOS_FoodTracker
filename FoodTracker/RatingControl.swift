//
//  RatingControl.swift
//  FoodTracker
//
//  Created by msano on 2017/02/17.
//  Copyright © 2017年 msano. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {

    //MARK: Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    //MARK: Private Methods
    
    private func setupButtons() {
        // Create the buttons
        let button = UIButton()
        button.backgroundColor = UIColor.red
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true

        // Setup the button action
        button.addTarget(self, action:
            #selector(RatingControl.ratingBUttonTapped(button:)), for: .touchUpInside)
        
        // Add the button to the stack
        addArrangedSubview(button)
    }
    
    
    // MARK: Button Aciton
    
    func  ratingBUttonTapped(button: UIButton) {
        print("Button pressed 👍")
    }
}
