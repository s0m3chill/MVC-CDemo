//
//  FirstView.swift
//  SingleViewDemo
//
//  Created by Dariy Kordiyak on 3/16/19.
//  Copyright © 2019 Dariy Kordiyak. All rights reserved.
//

import UIKit

class FirstView: UIView, ModuleView {
    
    // MARK: - Properties
    
    var backButton: UIButton?
    
    private var transitionButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("NextView", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        button.sizeToFit()
        
        return button
    }()
    
    private let dataSource: FirstController
    private let eventsHandler: FirstController

    // MARK: - Initialization
    
    required init(dataSource: ModuleController, eventsHandler: ModuleController, frame: CGRect) {
        guard let firstDataSource = dataSource as? FirstController,
              let firstEventsHandler = eventsHandler as? FirstController
        else {
            fatalError("Wrong datasource setup")
        }
        
        self.dataSource = firstDataSource
        self.eventsHandler = firstEventsHandler
        
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    
    func setupView() {
        backgroundColor = .green
        
        addSubview(transitionButton)
        transitionButton.center = center
    }
    
    // MARK: - Actions
    
    @objc private func buttonAction() {
        eventsHandler.didTapOnActionButton()
    }
    
}
