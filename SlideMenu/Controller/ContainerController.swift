//
//  ContainerController.swift
//  SlideMenu
//
//  Created by Rustem Supayev on 12/11/2019.
//  Copyright © 2019 Rustem Supayev. All rights reserved.
//

import UIKit

class ContainerController: UIViewController {
    
    // MARK: - Properties
    
    var menuController: MenuController!
    var centerController: UIViewController!
    var isExpanded = false
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureHomeController()
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    // MARK: - Handlers
    
    func configureHomeController() {
        let homeController = HomeController()
        homeController.delegate = self
        centerController = UINavigationController(rootViewController: homeController)
        
        view.addSubview(centerController.view)
        addChild(centerController)
        centerController.didMove(toParent: self)
    
    }
    
    func configureMenuController() {
        if menuController == nil {
            //add menu controller here
            menuController = MenuController()
            menuController.delegate = self
            view.insertSubview(menuController.view, at: 0)
            addChild(menuController)
            menuController.didMove(toParent: self)
            print("added menu")
            
            
        }
    }
    
    func animatePanel(shouldExpand: Bool, menuOption: MenuOption?) {
        if shouldExpand {
            
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.centerController.view.frame.origin.x = self.centerController.view.frame.width - 70
            }, completion: nil)
            
        } else {
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
            }, completion: nil)
            
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.centerController.view.frame.origin.x = 0
            }) { (_) in
                guard let menuOption = menuOption else { return }
                self.didSelectMenuOption(menuOption: menuOption)
            }
        }
    }
    
    func didSelectMenuOption(menuOption: MenuOption) {
        switch menuOption {
            
        case .Profile:
            print("show profile")
        case .Messages:
            print("show message")
        case .Notifications:
            print("show notif")
        case .Settings:
            print("show settings ")
        }
    }
}

extension ContainerController: HomeControllerDelegate {
    func handleMenuToggle(forMenuOption menuOption: MenuOption?) {
        
        if !isExpanded {
            configureMenuController()
        }
        
        isExpanded = !isExpanded
        animatePanel(shouldExpand: isExpanded, menuOption: menuOption)
    }
}
