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
    
    weak var rootController: ModuleController?
    var contentCoordinator: (ContentCoordinator & UIViewController)?
    
    // MARK: - API
    
    func start(from contentCoordinator: ContentCoordinator & UIViewController) {
        let thirdController = ThirdController(coordinator: self,
                                              datasource: ThirdModel())
        let thirdView = ThirdView(dataSource: thirdController,
                                    eventsHandler: thirdController,
                                    frame: contentCoordinator.view.frame)
        
        rootController = thirdController
        rootController?.view = thirdView
        
        self.contentCoordinator = contentCoordinator
        contentCoordinator.view.addSubview(thirdView)
    }
        
    // MARK: - Actions
        
    func didTapBackButton() {
        contentCoordinator?.proceedBackwards(from: self)
    }
    
}
