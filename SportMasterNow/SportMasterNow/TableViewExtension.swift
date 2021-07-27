//
//  TableViewExtension.swift
//  SportMasterNow
//
//  Created by Егор Буцень on 14.07.21.
//

import Foundation
import UIKit

extension UITableView {
    func registerCell(_ cellClass: AnyClass) {
        let nib = UINib(nibName: String(describing: cellClass.self), bundle: nil)
        self.register(nib, forCellReuseIdentifier: String(describing: cellClass.self))
    }
    
    func setupDelegateData(_ controller: UIViewController) {
        self.delegate = controller as? UITableViewDelegate
        self.dataSource = controller as? UITableViewDataSource
        self.tableFooterView = UIView()
    }
}
