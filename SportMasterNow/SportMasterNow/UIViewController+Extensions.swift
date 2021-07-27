//
//  UIViewController+Extensions.swift
//  SportMasterNow
//
//  Created by Егор Буцень on 14.07.21.
//

import Foundation
import UIKit

extension UIViewController {
    static func loadFromNib() ->Self {
        func instantiateFromNib<T: UIViewController>() -> T {
            return T.init(nibName: String(describing: T.self), bundle: nil)
        }
        
        return instantiateFromNib()
    }
}
