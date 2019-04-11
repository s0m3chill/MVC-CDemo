//
//  ModuleView.swift
//  SingleViewDemo
//
//  Created by Dariy Kordiyak on 4/11/19.
//  Copyright © 2019 Dariy Kordiyak. All rights reserved.
//

import UIKit

protocol ModuleView: class {
    var backButton: UIButton? { get }
    init(dataSource: ModuleController, eventsHandler: ModuleController, frame: CGRect)
    func setupView()
}
