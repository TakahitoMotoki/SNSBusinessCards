//
//  LoginViewController.swift
//  SNSBusinessCards
//
//  Created by 元木嵩人 on 2018/02/23.
//  Copyright © 2018年 元木嵩人. All rights reserved.
//

import UIKit
import NCMB

class LoginViewController: UIViewController, UITextFieldDelegate {
    override func loadView() {
        self.view = LoginView(number: 1)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loginView = self.view as! LoginView
        loginView.loginButton.addTarget(self, action: #selector(LoginViewController.login(sender: )), for: .touchUpInside)
        loginView.signUpButton.addTarget(self, action: #selector(LoginViewController.signUp(sender: )), for: .touchUpInside)
        loginView.forgetButton.addTarget(self, action: #selector(LoginViewController.forget(sender: )), for: .touchUpInside)
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

    @objc private func login(sender: Any!) {
        let storyboard: UIStoryboard = self.storyboard!
        let home = storyboard.instantiateViewController(withIdentifier: "home")
        self.present(home, animated: true, completion: nil)
    }
    
    @objc private func signUp(sender: Any!) {
        let storyboard: UIStoryboard = self.storyboard!
        let signup = storyboard.instantiateViewController(withIdentifier: "signup")
        self.present(signup, animated: true, completion: nil)
    }
    
    @objc private func forget(sender: Any!) {
        
    }
}
