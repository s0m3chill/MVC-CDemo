//
//  FirstView.swift
//  SingleViewDemo
//
//  Created by Dariy Kordiyak on 3/16/19.
//  Copyright © 2019 Dariy Kordiyak. All rights reserved.
//

import UIKit

class FirstView: UIView {
    
    // MARK: - Properties
    
    private let dataSource: FirstController
    private let eventsHandler: FirstController
    
    private var transitionButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("NextView", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        button.sizeToFit()
        
        return button
    }()

    // MARK: - Initialization
    
    init(dataSource: FirstController,
         eventsHandler: FirstController,
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
        backgroundColor = .green
        
        addSubview(transitionButton)
        transitionButton.center = center
    }
    
    // MARK: - Actions
    
    @objc private func buttonAction() {
        eventsHandler.didTapOnActionButton()
    }
    
}
