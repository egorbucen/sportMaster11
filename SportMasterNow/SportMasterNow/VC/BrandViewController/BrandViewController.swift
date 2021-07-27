//
//  BrandViewController.swift
//  SportMasterNow
//
//  Created by Егор Буцень on 14.07.21.
//

import UIKit

class BrandViewController: UIViewController {
    @IBOutlet weak var brandTableView: UITableView!
    @IBOutlet weak var brandSearchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        brandTableView.registerCell(BrandTableViewCell.self)
        brandTableView.setupDelegateData(self)

    }

}
extension BrandViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: BrandTableViewCell.self), for: indexPath)
            guard let BrandTableViewCell = cell as? BrandTableViewCell else {return cell}
        return BrandTableViewCell
        
        }
    
    }
