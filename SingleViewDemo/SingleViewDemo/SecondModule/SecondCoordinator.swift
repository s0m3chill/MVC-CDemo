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
    
    weak var rootController: ModuleController?
    var contentCoordinator: (ContentCoordinator & UIViewController)?
    
    // MARK: - API
    
    func start(from contentCoordinator: ContentCoordinator & UIViewController) {
        let secondController = SecondController(coordinator: self)
        let secondView = SecondView(dataSource: secondController,
                                  eventsHandler: secondController,
                                  frame: contentCoordinator.view.frame)
        
        rootController = secondController
        rootController?.view = secondView
        
        self.contentCoordinator = contentCoordinator
        contentCoordinator.view.addSubview(secondView)
    }
        
    // MARK: - Actions
        
    func didTapButton() {
        contentCoordinator?.proceedForwards()
    }
    
    func didTapBackButton() {
        contentCoordinator?.proceedBackwards(from: self)
    }
    
}
