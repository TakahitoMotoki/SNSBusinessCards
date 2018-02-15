//
//  FriendListView.swift
//  SNSBusinessCards
//
//  Created by 元木嵩人 on 2018/02/15.
//  Copyright © 2018年 元木嵩人. All rights reserved.
//

import Foundation
import UIKit

class FriendListView: UIView {
    let tableView: UITableView
    let NATIVE_BOUND_SIZE = UIScreen.main.bounds.size
    // let refreshControl: UIRefreshControl
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    required init(model: FriendListViewModel) {
        tableView = UITableView(frame: CGRect(x: 0, y: 0, width: NATIVE_BOUND_SIZE.width - 100 , height: NATIVE_BOUND_SIZE.height), style: .plain)
        // refreshControl = UIRefreshControl()
        // tableView.addSubview(refreshControl)
        
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0));
        self.addSubview(tableView)
    }
}
