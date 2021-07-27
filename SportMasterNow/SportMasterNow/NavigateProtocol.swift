//
//  NavigateProtocol.swift
//  SportMasterNow
//
//  Created by Егор Буцень on 15.07.21.
//

import Foundation
import UIKit

protocol PresentNavigateCell {
    func presentVC(viewController: UIViewController)
}
protocol PushNavigateCell {
    func pushVC(viewController: UIViewController)
}
