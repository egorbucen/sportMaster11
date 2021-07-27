//
//  SearchTableViewCell.swift
//  SportMasterNow
//
//  Created by Егор Буцень on 15.07.21.
//

import UIKit

class SearchTableViewCell: UITableViewCell {
    @IBOutlet weak var searchSegmentedControl: UISegmentedControl!
    @IBOutlet weak var saleButton: UIButton!
    @IBOutlet weak var newButton: UIButton!
    @IBOutlet weak var cothesButton: UIButton!
    @IBOutlet weak var footwearButton: UIButton!
    @IBOutlet weak var kindsOfSportsButton: UIButton!
    @IBOutlet weak var accessoriesButton: UIButton!
    @IBOutlet weak var offersImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    
}
