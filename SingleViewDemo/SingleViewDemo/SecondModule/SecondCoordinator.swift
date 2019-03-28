//
//  SecondCoordinator.swift
//  SingleViewDemo
//
//  Created by Dariy Kordiyak on 3/16/19.
//  Copyright © 2019 Dariy Kordiyak. All rights reserved.
//

import UIKit

class SecondCoordinator: ModuleCoordinator {
    
    // MARK: - Properties
    
    weak var rootController: ContentViewController?
    
    // MARK: - API
    
    func start(from contentController: ContentViewController) {
        let secondController = SecondController(coordinator: self)
        let secondView = SecondView(dataSource: secondController,
                                  eventsHandler: secondController,
                                  frame: contentController.view.frame)
        
        rootController = contentController
        contentController.view.addSubview(secondView)
    }
        
    func didTapButton() {
        rootController?.proceedForwards(from: self)
    }
    
    func didTapBackButton() {
        rootController?.proceedBackwards(from: self)
    }
    
}
