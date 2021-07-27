//
//  MainStrClass.swift
//  SportMasterNow
//
//  Created by Егор Буцень on 20.07.21.
//

import Foundation
import UIKit

struct  offer {
    var name: String
    var image: UIImage
}

class variant {
    var element = [offer]()
    func setup() {
        let titleCell = offer(name: "Товары", image: UIImage(named: "title")!)
        let secondTitleCell = offer(name: "хуй", image: UIImage(named: "adidas")!)
        self.element = [titleCell, secondTitleCell]
     
//        self.brends = [adidas, catepillar, columbia, dcShoes, demix, fila, icepeak, joss, kappa, merrell, outventure, puma, termit, wilson]
        
    }
}
