//
//  ViewController.swift
//  CoordinatorTry
//
//  Created by Onur Emren on 19.09.2023.
//

import UIKit

class ViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?
    private let mainView = MainView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        title = "Home"
        view.backgroundColor = .red
        
        mainView.coordinator = self.coordinator
        setView()
        
    }
    
    private func setView() {
        view.addSubview(mainView)
        mainView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}

