//
//  AdressMagazineViewController.swift
//  SportMasterNow
//
//  Created by Егор Буцень on 20.07.21.
//

import UIKit

class AdressMagazineViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var adress: [Adress] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        adress = Adresses().element
        tableView.setupDelegateData(self)
        tableView.registerCell(adressesCell.self)
    }
    

}
extension AdressMagazineViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return adress.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: adressesCell.self), for: indexPath)
            guard let AdressCell = cell as? adressesCell else {return cell}
        AdressCell.adressLabel.text = adress[indexPath.row].adress
        AdressCell.metroLabel.text = adress[indexPath.row].metro
        AdressCell.marketLabel.text = adress[indexPath.row].number
        return AdressCell
        
        }
    
    }
