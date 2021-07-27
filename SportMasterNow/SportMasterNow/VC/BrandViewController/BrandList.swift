//
//  BrandList.swift
//  SportMasterNow
//
//  Created by Егор Буцень on 16.07.21.
//

import Foundation
import UIKit

struct clothes {
    var name: String
    var price: Float
    var image: UIImage
    var description: String
    var type: String
}

class Clothes {
    
    var brends: [clothes] = []
    func setup() {
        let adidasTShirt = clothes(name: "Майка Adidas", price: 59.00, image: UIImage(named: "adidas")!, description: "Лаконичная футболка в фирменном стиле Nike станет отличным завершением образа.", type: "tShirt")
        let shoesCatepillar = clothes(name: "Полуботинки женские Caterpillar Maite", price: 119.00, image: UIImage(named: "catepillar")!, description: "Удобные и практичные кроссовки Caterpillar Maite — отличный вариант для путешествий.", type: "shoes")
        let sweatshirtСolumbia = clothes(name: "Свитшот женский Columbia Hart Mountain™ II", price: 102.00, image: UIImage(named: "columbia")!, description: "", type: "sweatshirt")
        let demix = clothes(name: "Брюки мужские Demix", price: 25.80, image: UIImage(named: "demix")!, description: "Лаконичные брюки в спортивном стиле от Demix.", type: "pants")
        let fila = clothes(name: "Майка женская FILA", price: 17.00, image: UIImage(named: "fila")!, description: "Майка FILA в спортивном стиле для комфортного летнего образа.", type: "undershirt")
        let icepeak = clothes(name: "Поло мужское IcePeak Kyan", price: 42.90, image: UIImage(named: "icepeak")!, description: "Поло IcePeak Kyan, выполненное из технологичного материала, пригодится в походе.", type: "polo")
        let joss = clothes(name: "Шорты плавательные мужские Joss", price: 0, image: UIImage(named: "joss")!, description: "", type: "shorts")
        let kappa = clothes(name: "kappa", price: 34.00, image: UIImage(named: "kappa")!, description: "Шорты для плавания Joss с контрастным поясом.", type: "shorts")
        let merrell = clothes(name: "Худи мужская Merrell", price: 119.00, image: UIImage(named: "merrell")!, description: "Худи Merrell удачно дополнит ваш образ во время путешествия.", type: "sweatshirt")
        let outventure = clothes(name: "Кепка мужская Outventure", price: 19.00, image: UIImage(named: "outventure")!, description: "Хлопковая кепка Outventure надежно защищает от солнца в жаркую погоду. Качественный материал обеспечивает отличную воздухопроницаемость и легкость. Предусмотрена регулировка размера.", type: "cap")
        let puma = clothes(name: "Худи мужская Puma Ess Big Logo", price: 129.00, image: UIImage(named: "puma")!, description: "Худи Puma для комфортного образа в спортивном стиле.", type: "sweatshirt")
        let termit = clothes(name: "Футболка женская Termit", price: 27.30, image: UIImage(named: "termit")!, description: "Футболка Termit для активного лета в городе.", type: "")
        let wilson = clothes(name: "wilson", price: 0, image: UIImage(named: "wilson")!, description: "", type: "tshirt")
//
//        self.brends = [adidas, catepillar, columbia, dcShoes, demix, fila, icepeak, joss, kappa, merrell, outventure, puma, termit, wilson]
    }
}
