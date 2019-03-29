//
//  ContentViewController.swift
//  SingleViewDemo
//
//  Created by Dariy Kordiyak on 3/15/19.
//  Copyright © 2019 Dariy Kordiyak. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController, ModuleController {    
    
    // MARK: - Properties
    
    var contentView: UIView?
        
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /// Each module, including content's background has different color
        /// In order to test view hierarchy in view debug
        view.backgroundColor = .red
    }
    
}

