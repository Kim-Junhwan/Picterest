//
//  TabBarCoordinator.swift
//  Picterest
//
//  Created by JunHwan Kim on 2022/08/23.
//

import Foundation
import UIKit

class TabBarCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    
    private var window: UIWindow
    
    init(window: UIWindow){
        self.window = window
    }
    
    func start() {
        let tabBarViewController = TabBarViewController()
        self.window.rootViewController = tabBarViewController
    }
    
    
}
