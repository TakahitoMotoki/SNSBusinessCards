//
//  FriendModel.swift
//  SNSBusinessCards
//
//  Created by 元木嵩人 on 2018/02/15.
//  Copyright © 2018年 元木嵩人. All rights reserved.
//

import Foundation
import UIKit

let CELL_ID = "mycell"

class FriendListViewModel: NSObject, UITableViewDataSource {
    var friendList: Array<FriendModel> = []
    
    override init() {
        super.init()
    }
    
    private func getAllFriend() {
        friendList = []
    }
    
    private func searchFriend(searchKey: String) {
        friendList = []
    }
    
    // MARK: - tableView Datasource Start
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = FriendListViewCell(style: .default, reuseIdentifier: CELL_ID)
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 43
    }
    // MARK: - tableView Datasource End
}
