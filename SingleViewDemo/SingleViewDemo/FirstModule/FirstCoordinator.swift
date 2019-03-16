//
//  FirstCoordinator.swift
//  SingleViewDemo
//
//  Created by Dariy Kordiyak on 3/16/19.
//  Copyright © 2019 Dariy Kordiyak. All rights reserved.
//

import UIKit

class FirstCoordinator: ModuleCoordinator {
    
    // MARK: - Properties
    
    weak var rootController: UIViewController?
    
    // MARK: - API
    
    func start(from contentController: UIViewController) {
        let firstController = FirstController(coordinator: self)
        let firstView = FirstView(dataSource: firstController,
                                  eventsHandler: firstController,
                                  frame: contentController.view.frame)
        
        rootController = contentController
        contentController.view = firstView
    }
    
    func didTapButton() {
        (rootController as? ContentViewController)?.proceedForwards(from: self)
    }
    
}
