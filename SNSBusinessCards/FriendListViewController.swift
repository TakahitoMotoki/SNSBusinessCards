//
//  FirstViewController.swift
//  SNSBusinessCards
//
//  Created by 元木嵩人 on 2018/02/14.
//  Copyright © 2018年 元木嵩人. All rights reserved.
//

import UIKit

class FriendListViewController: UIViewController, UITableViewDelegate, UISearchBarDelegate {
    private let FRIEND_LIST = FriendListViewModel()

    override func loadView() {
        self.view = FriendListView(model: FRIEND_LIST)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let friendListView = self.view as! FriendListView
        friendListView.tableView.delegate = self
        friendListView.tableView.dataSource = FRIEND_LIST
        friendListView.tableView.rowHeight = 56.0
        friendListView.searchBar.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

/*
 // MARK: UISearchBarDelegate Start
 // 検索ボタンが押された時に呼ばれる
 func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
 self.endEditing(true)
 searchBar.showsCancelButton = true
 //self.searchResults = PPAP.filter{
 // 大文字と小文字を区別せずに検索
 // $0.lowercased().contains(searchBar.text!.lowercased())
 // }
 self.tableView.reloadData()
 }
 
 // キャンセルボタンが押された時に呼ばれる
 func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
 searchBar.showsCancelButton = false
 self.endEditing(true)
 searchBar.text = ""
 self.tableView.reloadData()
 }
 
 // テキストフィールド入力開始前に呼ばれる
 func searchBarShouldBeginEditing(_ searchBar: UISearchBar) -> Bool {
 searchBar.showsCancelButton = true
 return true
 }
 // MARK: UISearchBarDelegate End
 */
