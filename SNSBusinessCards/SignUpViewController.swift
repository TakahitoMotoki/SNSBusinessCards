//
//  SignUpViewController.swift
//  SNSBusinessCards
//
//  Created by 元木嵩人 on 2018/03/04.
//  Copyright © 2018年 元木嵩人. All rights reserved.
//

import UIKit
import NCMB

class SignUpViewController: UIViewController {
    override func loadView() {
        self.view = SignUpView(number: 1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let signUpView = self.view as! SignUpView
        signUpView.backButton.addTarget(self, action: #selector(SignUpViewController.backToLogin(sender: )), for: .touchUpInside)
        signUpView.sendButton.addTarget(self, action: #selector(SignUpViewController.sendEmail(sender: )), for: .touchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // This func is used to close Keyboard called by TextField
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        // キーボードを閉じる
        textField.resignFirstResponder()
        return true
    }
    
    @objc private func backToLogin(sender: Any!) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc private func sendEmail(sender: Any!) {
        
    }
}
