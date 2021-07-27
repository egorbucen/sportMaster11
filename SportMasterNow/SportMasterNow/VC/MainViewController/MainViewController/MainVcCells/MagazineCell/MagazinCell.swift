//
//  MagazinCell.swift
//  SportMasterNow
//
//  Created by Егор Буцень on 20.07.21.
//

import UIKit

class MagazinCell: UITableViewCell {
    
    @IBOutlet weak var adressMagazinButton: UIButton!
 
    var navigation: PushNavigateCell?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
    @IBAction func adressButtonAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = storyboard.instantiateViewController(identifier:
        "AdressMagazineViewController") as? AdressMagazineViewController else {return}
        navigation?.pushVC(viewController: vc)
        
        
    }
    
}
