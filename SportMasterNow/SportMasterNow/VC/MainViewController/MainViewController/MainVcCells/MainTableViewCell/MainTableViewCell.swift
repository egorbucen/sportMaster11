//
//  MainTableViewCell.swift
//  SportMasterNow
//
//  Created by Егор Буцень on 14.07.21.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var titleLabel: UILabel!
    
    var imageArraay = [UIImage(named: "seasonalOffer1"), UIImage(named: "seasonalOffer2"), UIImage(named: "seasonalOffer3"), UIImage(named: "seasonalOffer4")]
       
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "ImageCell", bundle: nil), forCellWithReuseIdentifier: "ImageCell")
        
        let timer =  Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: #selector(self.scrollAutomatically), userInfo: nil, repeats: true)
    }
    @objc func scrollAutomatically(_ timer1: Timer) {
           
           if let collView  = collectionView {  // specialCollectionView - это твой коллекшн вью
               for cell in collView.visibleCells {
                   let indexPath: IndexPath? = collView.indexPath(for: cell)
                if ((indexPath?.row)! < imageArraay.count - 1){  // special.count - это твой массив картинок
                       let indexPath1: IndexPath?
                       indexPath1 = IndexPath.init(row: (indexPath?.row)! + 1, section: (indexPath?.section)!)
                       
                       collView.scrollToItem(at: indexPath1!, at: .right, animated: true)
                   }
                   else{
                       let indexPath1: IndexPath?
                       indexPath1 = IndexPath.init(row: 0, section: (indexPath?.section)!)
                       collView.scrollToItem(at: indexPath1!, at: .left, animated: true)
                   }
                   
               }
           }
       }

    
    
    
}

extension MainTableViewCell: UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return  imageArraay.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCell", for: indexPath) as! ImageCell
        cell.imgImage.image = imageArraay[indexPath.row]
        return cell
    }
    
    
}
