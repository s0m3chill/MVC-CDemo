//
//  ThirdView.swift
//  SingleViewDemo
//
//  Created by Dariy Kordiyak on 3/25/19.
//  Copyright © 2019 Dariy Kordiyak. All rights reserved.
//

import UIKit

class ThirdView: UIView {
    
    // MARK: - Properties
    
    private let dataSource: ThirdController
    private let eventsHandler: ThirdController
    
    private var backButton: UIButton = {
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
    
    // MARK: - Initialization
    
    init(dataSource: ThirdController,
         eventsHandler: ThirdController,
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
        backgroundColor = .blue
        
        addSubview(backButton)
        backButton.center = CGPoint(x: 50, y: 50)
        
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
