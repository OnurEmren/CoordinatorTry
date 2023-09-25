//
//  ViewModel.swift
//  CoordinatorTry
//
//  Created by Onur Emren on 25.09.2023.
//

import Foundation

class HomeViewModel {
    var coordinator: Coordinator?
    private let mainView = MainView()

    init(coordinator: Coordinator? = nil) {
        self.coordinator = coordinator
    }
    
    func gotoDetail() {
        coordinator?.eventOccored(with: .buttonTapped)
    }
}
