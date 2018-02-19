//
//  FriendListView.swift
//  SNSBusinessCards
//
//  Created by 元木嵩人 on 2018/02/15.
//  Copyright © 2018年 元木嵩人. All rights reserved.
//

import Foundation
import UIKit
import FontAwesomeKit

class FriendListView: UIView {
    var friendLabel: UILabel
    let addButton: UIButton
    var tableView: UITableView
    let NATIVE_BOUND_SIZE = UIScreen.main.bounds.size
    // let refreshControl: UIRefreshControl
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    required init(model: FriendListViewModel) {
        friendLabel = UILabel(frame: CGRect(x: NATIVE_BOUND_SIZE.width / 2 - 100, y: 18, width: 200, height: 44))
        addButton = UIButton()
        tableView = UITableView(frame: CGRect(x: 0, y: 70, width: NATIVE_BOUND_SIZE.width , height: NATIVE_BOUND_SIZE.height - 100), style: .plain)
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        
        // MARK: friendLabel Start
        friendLabel.textAlignment = .center
        friendLabel.font = UIFont(name: "Gurmukhi MN", size: 22)
        friendLabel.text = "Friend: 100"
        friendLabel.textColor = UIColor(red: 200.0 / 255.0, green: 0.0 / 255.0, blue: 200.0 / 255.0, alpha: 1.0)
        self.addSubview(friendLabel)
        // MARK: friendLabel End

        // MARK: addButton Start
        let buttonFontImage = FAKFontAwesome.userIcon(withSize: 32.0)
        buttonFontImage?.addAttribute(NSAttributedStringKey.foregroundColor.rawValue, value: UIColor.white)
        let buttonImage = buttonFontImage?.image(with: CGSize(width: 32.0, height: 32.0))
        
        addButton.backgroundColor = UIColor.clear
        addButton.setBackgroundImage(buttonImage, for: .normal)
        addButton.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(addButton)

        addButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20.0).isActive = true
        addButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 25.0).isActive = true
        addButton.widthAnchor.constraint(equalToConstant: 32.0).isActive = true
        addButton.heightAnchor.constraint(equalToConstant: 32.0).isActive = true
        // MARK: addButton End
        
        // MARK: tableView Start
        self.addSubview(tableView)
        // MARK: tableView End
        
        // Backgrond Color
        self.backgroundColor = UIColor(red: 255.0 / 255.0, green: 255.0 / 255.0, blue: 0.0 / 255.0, alpha: 0.9)
    }
}
