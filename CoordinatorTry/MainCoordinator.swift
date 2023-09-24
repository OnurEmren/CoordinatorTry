//
//  MainCoordinator.swift
//  CoordinatorTry
//
//  Created by Onur Emren on 24.09.2023.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var navigationController: UINavigationController?
    
    func eventOccored(with type: Event) {
        switch type {
        case .buttonTapped:
            let vc = DetailViewController()
            vc.coordinator = self
            navigationController?.pushViewController(vc, animated: true )
        }
    }
    
    func start() {
        let vc = ViewController()
        vc.coordinator = self
        
        navigationController?.setViewControllers([vc], animated: false)
    }
}
