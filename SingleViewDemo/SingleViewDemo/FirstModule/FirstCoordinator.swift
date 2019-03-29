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
    
    weak var rootController: ModuleController?
    var contentCoordinator: (ContentCoordinator & UIViewController)?
    
    // MARK: - API
    
    func start(from contentCoordinator: UIViewController & ContentCoordinator) {
        let firstController = FirstController(coordinator: self)
        let firstView = FirstView(dataSource: firstController,
                                  eventsHandler: firstController,
                                  frame: contentCoordinator.view.frame)
        
        rootController = firstController
        rootController?.view = firstView
        
        self.contentCoordinator = contentCoordinator
        contentCoordinator.view.addSubview(firstView)
    }
        
    // MARK: - Actions
        
    func didTapButton() {
        contentCoordinator?.proceedForwards()
    }
    
}
