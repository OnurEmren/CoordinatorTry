//
//  Coordinator.swift
//  CoordinatorTry
//
//  Created by Onur Emren on 19.09.2023.
//

import Foundation
import UIKit

enum Event {
    case buttonTapped
}

protocol Coordinator: AnyObject {
    var navigationController: UINavigationController? { get set }
    
    func eventOccored(with type: Event)
    func start()
}

protocol Coordinating {
    var coordinator: Coordinator? { get set }
}

