//
//  MainView.swift
//  CoordinatorTry
//
//  Created by Onur Emren on 19.09.2023.
//

import Foundation
import UIKit
import SnapKit

class MainView: UIView, Coordinating {
    
    var coordinator: Coordinator?
    private let mainView: UIView = UIView()
    private let mainLabel: UILabel = UILabel()
    private let mainButton: UIButton = UIButton()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        addSubview(mainView)
        mainView.addSubview(mainLabel)
        mainView.addSubview(mainButton)
       
        mainView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        mainLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalTo(300)
            make.height.equalTo(100)
        }
        
        mainButton.snp.makeConstraints { make in
            make.top.equalTo(mainLabel.snp.top).inset(100)
            make.height.equalTo(50)
            make.centerX.equalToSuperview()
            make.trailing.equalTo(-50)
        }
        mainLabel.backgroundColor = .white
        mainLabel.text = "Test"
        mainLabel.textColor = .black
        mainLabel.textAlignment = .center

        mainButton.center = center
        mainButton.backgroundColor = .green
        mainButton.setTitleColor(.white, for: .normal)
        mainButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        mainButton.setTitle("GO", for: .normal)
        
    }
    
    @objc
    private func didTapButton() {
        coordinator?.eventOccored(with: .buttonTapped)
    }
}
