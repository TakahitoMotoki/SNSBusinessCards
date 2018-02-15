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
    
    // MARK: DataSourceメソッド
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: CELL_ID)
        cell.textLabel?.text = "AA"
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
}
