//
//  ThirdCoordinator.swift
//  SingleViewDemo
//
//  Created by Dariy Kordiyak on 3/25/19.
//  Copyright © 2019 Dariy Kordiyak. All rights reserved.
//

class ThirdCoordinator: ModuleCoordinator {
    
    // MARK: - Properties
    
    var type: ModuleTypes {
        return .third
    }
    weak var rootController: ModuleController?
    
    private var contentCoordinator: ContentCoordinator?
    
    // MARK: - API
    
    func start(from coordinator: ContentCoordinator, controller: ModuleController) {
        let thirdController = ThirdController(coordinator: self,
                                              datasource: ThirdModel())
        let thirdView = ThirdView(dataSource: thirdController,
                                  eventsHandler: thirdController,
                                  frame: controller.contentView?.frame ?? .zero)
        
        rootController = thirdController
        rootController?.contentView = thirdView
        
        contentCoordinator = coordinator
        controller.contentView?.addSubview(thirdView)
    }
        
    // MARK: - Actions
        
    func didTapBackButton() {
        contentCoordinator?.pop(from: self)
    }
    
}
