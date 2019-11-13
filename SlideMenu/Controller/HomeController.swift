//
//  HomeController.swift
//  SlideMenu
//
//  Created by Rustem Supayev on 12/11/2019.
//  Copyright © 2019 Rustem Supayev. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    
    // MARK: - Properties
    
    var delegate: HomeControllerDelegate?
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureNavigationBar()
    }
    
    // MARK: - Handlers
    
    @objc func handleMenuToggle() {

        delegate?.handleMenuToggle(forMenuOption: nil)
    }
    
    func configureNavigationBar() {
        navigationController?.navigationBar.barTintColor = .brown
        navigationController?.navigationBar.barStyle = .black
        navigationItem.title = "Home"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "ic_menu_white_3x").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleMenuToggle))
        
    }
}
