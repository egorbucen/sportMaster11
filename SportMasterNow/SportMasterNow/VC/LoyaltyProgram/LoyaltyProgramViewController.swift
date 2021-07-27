//
//  LoyaltyProgramViewController.swift
//  SportMasterNow
//
//  Created by Егор Буцень on 17.07.21.
//

import UIKit

class LoyaltyProgramViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.registerCell(LoyaltyProgramTableViewCell.self)
        tableView.setupDelegateData(self)

        
    }
}

extension LoyaltyProgramViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: LoyaltyProgramTableViewCell.self), for: indexPath)
            guard let LoyaltyProgramTableViewCell = cell as? LoyaltyProgramTableViewCell else {return cell}
        return LoyaltyProgramTableViewCell
        
        }
    
    }
    
