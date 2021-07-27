//
//  MazaginesClass.swift
//  SportMasterNow
//
//  Created by Егор Буцень on 25.07.21.
//

import Foundation
import UIKit

struct Adress {
    var adress: String
    var metro: String
    var number: String
}

class Adresses {
    var element = [Adress]()
    
    init() {
        setup()
    }
    func setup() {
        let nemiga = Adress(adress: "г. Минск,  ТЦ Галерея Минск, пр-т Победителей, д.9, пом.409 (№15 согласно Тех. пасп. объекта)", metro: "Немига", number: "Супермаркет Пн-Вс: 10:00 - 22:00 +375(17)352-05-45")
        let mogilevskai = Adress(adress: "г. Минск, пр-т Партизанский, 150А, торг. объект №88 (№109-124, 126-128 согласно Тех. пасп. объекта)", metro: "Могилевская", number: "СупермаркетПн-Вс: 10:00-22:00 +375 (17) 319-73-68")
        let vostok = Adress(adress: "г. Минск, ТЦ Дана Молл, ул. Петра Мстиславца, д. 11, 2 этаж, пом. 1", metro: "Восток", number: "Супермаркет Пн-Вс: 10:00-22:00 +375 (17) 352-68-90")
        let petrovshina = Adress(adress: "г. Минск, ТЦ Магнит, пр-т Дзержинского, д.106, пом.34", metro: "Петровщина", number: "Супермаркет Пн-Вс: 10:00-22:00 +375 (17) 238-67-80")
        let iakybaKolasa = Adress(adress: "г. Минск, ул. Кульман, д.3, пом. 201А, ТЦ Coolman, 2 этаж", metro: "Площадь Якуба Коласа", number: "Супермаркет Пн-Вс: 10:00-21:00 +375 (17) 336-05-60")
        let academiaNayk = Adress(adress: "г. Минск, ул. Я.Коласа, д.39, пом.3Н", metro: "Академия наук", number: "Супермаркет Пн-Вс: 10:00-21:00 +375 (17) 257-33-33")
        self.element = [nemiga, mogilevskai, vostok, petrovshina, iakybaKolasa, academiaNayk]
    }
}


