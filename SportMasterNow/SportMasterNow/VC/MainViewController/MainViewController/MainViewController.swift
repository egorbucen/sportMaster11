//
//  MainViewController.swift
//  SportMasterNow
//
//  Created by Егор Буцень on 14.07.21.
//

import UIKit

enum CellsTypes: CaseIterable { // перечесление ячеек
    case titles
    case name
    case adress
}

class MainViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var points: [CellsTypes] = [.titles, .name, .adress]
    var hui: [offer] = variant().element
    
    var navigation: PushNavigateCell?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigation = self
        
        tableView.registerCell(MainTableViewCell.self)
        tableView.setupDelegateData(self)
        tableView.registerCell(MagazinCell.self)
        tableView.registerCell(ServiceCell.self)
        
        
    }
    
    

}

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        points.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let point = points[indexPath.row]
        switch point {
        case .titles:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: MainTableViewCell.self), for: indexPath)
            guard let MainTableViewCell = cell as? MainTableViewCell else {return cell}
            MainTableViewCell.titleLabel.text = "Сезонное предложение"
            return MainTableViewCell
        
        case .name:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: MagazinCell.self), for: indexPath)
            guard let nameCell = cell as? MagazinCell else { return cell }
            nameCell.navigation = self
            return nameCell
            
        case .adress:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ServiceCell.self), for: indexPath)
            guard let servCell = cell as? ServiceCell else { return cell }
            return servCell
        }
        
    }
    
}
extension MainViewController: PushNavigateCell {
    func pushVC(viewController: UIViewController) {
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    
}
