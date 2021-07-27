//
//  ProfileViewController.swift
//  SportMasterNow
//
//  Created by Егор Буцень on 14.07.21.
//

import UIKit

enum CellsType: CaseIterable { // перечесление ячеек
    case title
}

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var points:[CellsType] = [.title]
    var navigationCell: PresentNavigateCell?
    var pushNavigationCell: PushNavigateCell?
        
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.registerCell(ProfileTableViewCell.self)
        tableView.setupDelegateData(self)

    }

}

extension ProfileViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        points.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let point = points[indexPath.row]
        switch point {
        case .title:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ProfileTableViewCell.self), for: indexPath)
            guard let ProfileTableViewCell = cell as? ProfileTableViewCell else {return cell}
            ProfileTableViewCell.navigationCell = self
            ProfileTableViewCell.pushNavigationCell = self
            return ProfileTableViewCell
        
        }
        
    }
    
}

extension ProfileViewController: PresentNavigateCell {
    func presentVC(viewController: UIViewController) {
        navigationController?.present(viewController, animated: true)
    }
}

extension ProfileViewController: PushNavigateCell {
    func pushVC(viewController: UIViewController) {
        navigationController?.pushViewController(viewController, animated: true)
    }
    
}
