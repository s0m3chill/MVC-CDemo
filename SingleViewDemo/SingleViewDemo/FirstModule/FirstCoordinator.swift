//
//  FirstCoordinator.swift
//  SingleViewDemo
//
//  Created by Dariy Kordiyak on 3/16/19.
//  Copyright © 2019 Dariy Kordiyak. All rights reserved.
//

class FirstCoordinator: ModuleCoordinator {
    
    // MARK: - Properties
    
    var type: ModuleTypes {
        return .first
    }
    weak var rootController: ModuleController?
    
    private var contentCoordinator: ContentCoordinator?
    
    // MARK: - API
    
    func start(from coordinator: ContentCoordinator, controller: ModuleController) {
        let firstController = FirstController(coordinator: self)
        let firstView = FirstView(dataSource: firstController,
                                  eventsHandler: firstController,
                                  frame: controller.contentView?.frame ?? .zero)
        rootController = firstController
        rootController?.contentView = firstView
        
        contentCoordinator = coordinator
        controller.contentView?.addSubview(firstView)
    }
        
    // MARK: - Actions
        
    func didTapButton() {
        contentCoordinator?.push(to: .second)
    }
    
}
