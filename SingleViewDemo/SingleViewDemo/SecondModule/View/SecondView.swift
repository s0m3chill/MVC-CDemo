//
//  SecondView.swift
//  SingleViewDemo
//
//  Created by Dariy Kordiyak on 3/16/19.
//  Copyright © 2019 Dariy Kordiyak. All rights reserved.
//

import UIKit

class SecondView: UIView, ModuleView {
    
    // MARK: - Properties
    
    var backButton: UIButton? = {
        let button = UIButton(type: .system)
        button.setTitle("Back", for: .normal)
        button.addTarget(self, action: #selector(backButtonAction), for: .touchUpInside)
        button.sizeToFit()
        
        return button
    }()
    
    private var transitionButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Last view", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        button.sizeToFit()
        
        return button
    }()
    
    private let dataSource: SecondController
    private let eventsHandler: SecondController
    
    // MARK: - Initialization
    
    required init(dataSource: ModuleController, eventsHandler: ModuleController, frame: CGRect) {
        guard let secondDataSource = dataSource as? SecondController,
              let secondEventsHandler = eventsHandler as? SecondController
        else {
            fatalError("Wrong datasource setup")
        }
        self.dataSource = secondDataSource
        self.eventsHandler = secondEventsHandler
        
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    
    func setupView() {
        backgroundColor = .yellow
        
        addSubview(transitionButton)
        transitionButton.center = center
        
        if let existingBackButton = backButton {
            addSubview(existingBackButton)
            existingBackButton.center = CGPoint(x: 50, y: 50)
        }
    }
    
    // MARK: - Actions
    
    @objc private func buttonAction() {
        eventsHandler.didTapButton()
    }
    
    @objc private func backButtonAction() {
        eventsHandler.didTapBackButton()
    }
    
}
