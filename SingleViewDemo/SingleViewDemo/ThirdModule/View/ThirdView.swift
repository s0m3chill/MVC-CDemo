//
//  ThirdView.swift
//  SingleViewDemo
//
//  Created by Dariy Kordiyak on 3/25/19.
//  Copyright © 2019 Dariy Kordiyak. All rights reserved.
//

import UIKit

class ThirdView: UIView, ModuleView {
    
    // MARK: - Properties
    
    var backButton: UIButton? = {
        let button = UIButton(type: .system)
        button.setTitle("Back", for: .normal)
        button.addTarget(self, action: #selector(backButtonAction), for: .touchUpInside)
        button.sizeToFit()
        
        return button
    }()
    
    private var contentImageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)

        return imageView
    }()
    
    private let dataSource: ThirdController
    private let eventsHandler: ThirdController
    
    // MARK: - Initialization
    
    required init(dataSource: ModuleController, eventsHandler: ModuleController, frame: CGRect) {
        guard let thirdDataSource = dataSource as? ThirdController,
              let thirdEventsHandler = eventsHandler as? ThirdController
        else {
            fatalError("Wrong datasource setup")
        }
        self.dataSource = thirdDataSource
        self.eventsHandler = thirdEventsHandler
        
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    
    func setupView() {
        backgroundColor = .blue
        
        if let existingBackButton = backButton {
            addSubview(existingBackButton)
            existingBackButton.center = CGPoint(x: 50, y: 50)
        }
        
        addSubview(contentImageView)
        let imageName = dataSource.imageName()
        contentImageView.image = UIImage(named: imageName)
        contentImageView.sizeToFit()
        contentImageView.center = center
    }
    
    // MARK: - Actions
    
    @objc private func backButtonAction() {
        eventsHandler.didTapBackButton()
    }
    
}
