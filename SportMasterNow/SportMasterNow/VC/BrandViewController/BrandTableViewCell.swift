//
//  BrandTableViewCell.swift
//  SportMasterNow
//
//  Created by Егор Буцень on 14.07.21.
//

import UIKit

class BrandTableViewCell: UITableViewCell {

    @IBOutlet weak var nikeButton: UIButton!
    @IBOutlet weak var outventureButton: UIButton!
    @IBOutlet weak var demixButton: UIButton!
    @IBOutlet weak var termitButton: UIButton!
    @IBOutlet weak var kappaButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        buttonBorder(button: nikeButton)
        buttonBorder(button: outventureButton)
        buttonBorder(button: demixButton)
        buttonBorder(button: termitButton)
        buttonBorder(button: kappaButton)
        
    }
    
    func buttonBorder (button: UIButton) {
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 40
    }
    
}
