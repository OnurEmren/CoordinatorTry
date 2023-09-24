//
//  DetailViewController.swift
//  CoordinatorTry
//
//  Created by Onur Emren on 19.09.2023.
//

import UIKit

class DetailViewController: UIViewController, Coordinating {
    
    var coordinator: Coordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .green
    }
}
