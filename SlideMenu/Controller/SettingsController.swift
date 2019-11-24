//
//  SettingsController.swift
//  SlideMenu
//
//  Created by Rustem Supayev on 14/11/2019.
//  Copyright © 2019 Rustem Supayev. All rights reserved.
//

import UIKit

class SettingsController: UIViewController {
    
    // MARK: - Properties
        
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        
    }
    
    // MARK : - Selectiors
    
    @objc func handleDismiss() {
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: - Helper functions
    
    func configureUI() {
        
        view.backgroundColor = .white
        navigationController?.navigationBar.barTintColor =  .brown
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Settings"
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "baseline_clear_white_36pt_3x").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleDismiss))
        
        let label = UILabel()
        
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Settings not available..."
        label.textColor = .gray
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ])
        
    }
    
}
