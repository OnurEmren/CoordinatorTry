//
//  ViewController.swift
//  CoordinatorTry
//
//  Created by Onur Emren on 19.09.2023.
//

import UIKit

class HomeViewController: UIViewController {
    
    var viewModel: HomeViewModel?
    private let mainView = MainView()
    
    
    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Home"
        view.backgroundColor = .red

        setView()
        mainView.mainButton.addTarget(self, action: #selector(goToDetail), for: .touchUpInside)
    }
    
    @objc
    private func goToDetail() {
        viewModel?.gotoDetail()
    }
    
    private func setView() {
        view.addSubview(mainView)
        mainView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}

