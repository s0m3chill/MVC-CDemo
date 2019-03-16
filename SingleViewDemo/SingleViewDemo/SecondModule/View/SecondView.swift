//
//  SecondView.swift
//  SingleViewDemo
//
//  Created by Dariy Kordiyak on 3/16/19.
//  Copyright © 2019 Dariy Kordiyak. All rights reserved.
//

import UIKit

class SecondView: UIView {
    
    // MARK: - Properties
    
    private let dataSource: SecondController
    private let eventsHandler: SecondController
    
    private var transitionButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("AAA", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        button.sizeToFit()
        
        return button
    }()
    
    private var backButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Back", for: .normal)
        button.addTarget(self, action: #selector(backButtonAction), for: .touchUpInside)
        button.sizeToFit()
        
        return button
    }()
    
    // MARK: - Initialization
    
    init(dataSource: SecondController,
         eventsHandler: SecondController,
         frame: CGRect) {
        self.dataSource = dataSource
        self.eventsHandler = eventsHandler
        
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    
    private func setupView() {
        backgroundColor = .yellow
        
        addSubview(transitionButton)
        transitionButton.center = center
        
        addSubview(backButton)
        backButton.center = CGPoint(x: 50, y: 50)
    }
    
    // MARK: - Actions
    
    @objc private func buttonAction() {
        
    }
    
    @objc private func backButtonAction() {
        eventsHandler.didTapBackButton()
    }
    
}
