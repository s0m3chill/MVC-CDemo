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
    
    weak var rootController: ContentViewController?
    
    // MARK: - API
    
    func start(from contentController: ContentViewController) {
        let firstController = FirstController(coordinator: self)
        let firstView = FirstView(dataSource: firstController,
                                  eventsHandler: firstController,
                                  frame: contentController.view.frame)
        
        rootController = contentController
        contentController.view = firstView
    }
    
    func didTapButton() {
        rootController?.proceedForwards(from: self)
    }
    
}
