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
    
    weak var rootController: ContentViewController?
    
    // MARK: - API
    
    func start(from contentController: ContentViewController) {
        let thirdController = ThirdController(coordinator: self,
                                              datasource: ThirdModel())
        let thirdView = ThirdView(dataSource: thirdController,
                                    eventsHandler: thirdController,
                                    frame: contentController.view.frame)
        
        rootController = contentController
        contentController.view.addSubview(thirdView)
    }
        
    func didTapBackButton() {
        rootController?.proceedBackwards(from: self)
    }
    
}
