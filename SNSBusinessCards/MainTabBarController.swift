//
//  MainTabBarController.swift
//  SNSBusinessCards
//
//  Created by 元木嵩人 on 2018/02/19.
//  Copyright © 2018年 元木嵩人. All rights reserved.
//

import Foundation
import UIKit
import FontAwesomeKit
import RAMAnimatedTabBarController

class MainTabBarController: UITabBarController {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        var viewControllers: [UIViewController] = []
        
        // MARK: FriendListViewController Start
        let friendBarFont = FAKFontAwesome.usersIcon(withSize: 30.0)
        let friendBarImage = friendBarFont?.image(with: CGSize(width: 30.0, height: 30.0))
        let friendListViewController = FriendListViewController()
        friendListViewController.tabBarItem = UITabBarItem(title: "Friends", image: friendBarImage, tag: 1)
        viewControllers.append(friendListViewController)
        // MARK: FriendBarController End
        
        // MARK: SendViewController Start
        let sendBarFont = FAKFontAwesome.wifiIcon(withSize: 30.0)
        let sendBarImage = sendBarFont?.image(with: CGSize(width: 30.0, height: 30.0))
        let sendViewController = SendViewController()
        sendViewController.tabBarItem = UITabBarItem(title: "Yellow Tooth", image: sendBarImage, tag: 3)
        viewControllers.append(sendViewController)
        // MARK: SendViewController End
        
        // MARK: SettingViewController Start
        let settingBarFont = FAKFontAwesome.cogsIcon(withSize: 30.0)
        let settingBarImage = settingBarFont?.image(with: CGSize(width: 30.0, height: 30.0))
        let settingViewController = SettingViewController()
        settingViewController.tabBarItem = UITabBarItem(title: "Setting", image: settingBarImage, tag: 3)
        viewControllers.append(settingViewController)
        // MARK: SettingViewController End
        
        self.setViewControllers(viewControllers, animated: true)
    }
}
