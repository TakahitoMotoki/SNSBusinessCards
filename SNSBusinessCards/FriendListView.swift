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
    let searchBar: UISearchBar
    var tableView: UITableView
    let NATIVE_BOUND_SIZE = UIScreen.main.bounds.size
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    required init(model: FriendListViewModel) {
        friendLabel = UILabel(frame: CGRect(x: NATIVE_BOUND_SIZE.width / 2 - 100, y: 18, width: 200, height: 44))
        addButton = UIButton()
        searchBar = UISearchBar()
        tableView = UITableView(frame: CGRect(x: 0, y: 70, width: NATIVE_BOUND_SIZE.width , height: NATIVE_BOUND_SIZE.height - 100), style: .plain)
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        
        // MARK: - friendLabel Start
        friendLabel.textAlignment = .center
        friendLabel.font = UIFont(name: "Gurmukhi MN", size: 22)
        friendLabel.text = "Friend: 100"
        friendLabel.textColor = MY_PURPLE
        self.addSubview(friendLabel)
        // MARK: - friendLabel End

        // MARK: - addButton Start
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
        // MARK: - addButton End
        
        // MARK: - searchBar Start
        searchBar.frame = CGRect(x: 0, y: 70, width: NATIVE_BOUND_SIZE.width, height: 44)
        searchBar.searchBarStyle = .default
        searchBar.backgroundColor = UIColor.white
        searchBar.barTintColor = UIColor.white
        searchBar.placeholder = "検索"
        
        tableView.tableHeaderView = searchBar
        // MARK: - searchBar End
        
        // MARK: - tableView Start
        self.addSubview(tableView)
        // MARK: - tableView End
        
        // MARK: - self Start
        self.backgroundColor = MY_YELLOW
        // MARK: - self End
    }
}

class FriendListViewCell: UITableViewCell {
    var friendIcon: UIImageView
    var friendName: UILabel
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        friendIcon = UIImageView()
        friendName = UILabel()
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        // MARK: - friendIcon Start
        friendIcon.layer.cornerRadius = 22
        // !---   Test Start   ---!
        let buttonFontImage = FAKFontAwesome.userIcon(withSize: 44.0)
        buttonFontImage?.addAttribute(NSAttributedStringKey.foregroundColor.rawValue, value: UIColor.black)
        let buttonImage = buttonFontImage?.image(with: CGSize(width: 44.0, height: 44.0))
        // !---   Test End   ---!
        friendIcon.image = buttonImage
        friendIcon.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(friendIcon)
        
        friendIcon.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
        friendIcon.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        friendIcon.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10.0).isActive = true
        friendIcon.topAnchor.constraint(equalTo: self.topAnchor, constant: 6.0).isActive = true
        // MARK: - friendIcon End
        
        // MARK: - friendName Start
        friendName = UILabel()
        friendName.textAlignment = .left
        friendName.font = UIFont(name: "Gurmukhi MN", size: 14)
        friendName.textColor = MY_PURPLE
        friendName.text = "Test"
        friendName.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(friendName)
        
        friendName.widthAnchor.constraint(equalToConstant: 200.0).isActive = true
        friendName.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        friendName.leadingAnchor.constraint(equalTo: self.friendIcon.trailingAnchor, constant: 10.0).isActive = true
        friendName.topAnchor.constraint(equalTo: self.topAnchor, constant: 6.0).isActive = true
        // MARK: - friendName End
    }
}
