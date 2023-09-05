//
//  RatingControl.swift
//  MyPlaces
//
//  Created by Дарья Кобелева on 04.09.2023.
//

import UIKit

@IBDesignable class RatingControl: UIStackView {
    
    //MARK: Proporties
    
    private  var ratingButtons = [UIButton]()
    
    var rating = 0
    
    //MARK: Initialization
    
    override init(frame: CGRect ) {
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    //MARK: Button Action
    
    @objc func retingButtonTapped(button: UIButton) {
        print("Button pressed 😻")
    }
    
    //MARK: Private Methods
    
    private func setupButtons() {
        
        for _ in 1...5 {
            
        //Create the button
            let button = UIButton()
            button.backgroundColor = .yellow
            
        //Add constraints
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
            button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
                
        //Setup the button action
            button.addTarget(self, action: #selector(retingButtonTapped(button:)), for: .touchUpInside)
            
        //Add the button to the stack
            addArrangedSubview(button)
            
        //Add the new button on the ratting button array
            ratingButtons.append(button)
    
        }
        
         
    }
}
