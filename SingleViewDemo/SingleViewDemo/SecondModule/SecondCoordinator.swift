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
    
    weak var rootController: UIViewController?
    
    // MARK: - API
    
    func start(from contentController: UIViewController) {
        let secondController = SecondController(coordinator: self)
        let secondView = SecondView(dataSource: secondController,
                                  eventsHandler: secondController,
                                  frame: contentController.view.frame)
        
        rootController = contentController
        contentController.view = secondView
    }
    
    func didTapButton() {
        (rootController as? ContentViewController)?.proceedForwards(from: self)
    }
    
    func didTapBackButton() {
        (rootController as? ContentViewController)?.proceedBackwards(from: self)
    }
    
}
