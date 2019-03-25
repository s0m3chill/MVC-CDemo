//
//  ThirdCoordinator.swift
//  SingleViewDemo
//
//  Created by Dariy Kordiyak on 3/25/19.
//  Copyright © 2019 Dariy Kordiyak. All rights reserved.
//

import UIKit

class ThirdCoordinator: ModuleCoordinator {
    
    // MARK: - Properties
    
    weak var rootController: UIViewController?
    
    // MARK: - API
    
    func start(from contentController: UIViewController) {
        let thirdController = ThirdController(coordinator: self)
        let thirdView = ThirdView(dataSource: thirdController,
                                    eventsHandler: thirdController,
                                    frame: contentController.view.frame)
        
        rootController = contentController
        contentController.view = thirdView
    }
    
    func didTapButton() {
        
    }
    
    func didTapBackButton() {
        (rootController as? ContentViewController)?.proceedBackwards(from: self)
    }
    
}
