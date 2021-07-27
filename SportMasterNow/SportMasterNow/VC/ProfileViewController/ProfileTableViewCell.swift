//
//  ProfileTableViewCell.swift
//  SportMasterNow
//
//  Created by Егор Буцень on 14.07.21.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {
    
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var entranceButton: UIButton!
    
    var navigationCell: PresentNavigateCell?
    var pushNavigationCell: PushNavigateCell?
    
    @IBOutlet weak var programmButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        registerButton.layer.borderWidth = 1
        registerButton.layer.borderColor = UIColor.black.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    @IBAction func registerButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = storyboard.instantiateViewController(identifier: "RegisterViewController") as?
                RegisterViewController else {return}
        navigationCell?.presentVC(viewController: vc)
        
    }
    
    @IBAction func entranceButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = storyboard.instantiateViewController(identifier:
        "EntranceViewController") as? EntranceViewController else {return}
        navigationCell?.presentVC(viewController: vc)
        
    }
    @IBAction func ptogrammButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = storyboard.instantiateViewController(identifier:
        "LoyaltyProgramViewController") as? LoyaltyProgramViewController else {return}
        navigationCell?.presentVC(viewController: vc)
        
    }
    
    
    
}
