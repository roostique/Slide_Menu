//
//  MenuOption.swift
//  SlideMenu
//
//  Created by Rustem Supayev on 13/11/2019.
//  Copyright © 2019 Rustem Supayev. All rights reserved.
//
import UIKit

enum MenuOption: Int, CustomStringConvertible {
    
    case Profile
    case Messages
    case Notifications
    case Settings
    
    var description: String {
        switch self {
            
        case .Profile:
            return "Profile"
        case .Messages:
            return "Messages"
        case .Notifications:
            return "Notifications"
        case .Settings:
            return "Settings"
        
        }
    }
    
    var image: UIImage {
        switch self {
            
        case .Profile:
            return #imageLiteral(resourceName: "ic_person_outline_white_2x")
        case .Messages:
            return #imageLiteral(resourceName: "ic_mail_outline_white_2x")
        case .Notifications:
            return #imageLiteral(resourceName: "ic_menu_white_3x")
        case .Settings:
            return #imageLiteral(resourceName: "baseline_settings_white_24dp")
            
        }
    }
}
