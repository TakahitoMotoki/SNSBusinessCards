//
//  LoginView.swift
//  SNSBusinessCards
//
//  Created by 元木嵩人 on 2018/02/23.
//  Copyright © 2018年 元木嵩人. All rights reserved.
//

import UIKit
import TextFieldEffects
import NCMB

class LoginView: UIView {
    var emailTextField: MadokaTextField
    var passwordTextField: MadokaTextField
    var emailLabel: UILabel
    var passwordLabel: UILabel
    var errorLabel: UILabel
    var loginButton: UIButton
    var signUpButton: UIButton
    var forgetButton: UIButton
    
    let NATIVE_BOUND_SIZE = UIScreen.main.bounds.size
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    required init?(number: Int) {
        emailTextField = MadokaTextField()
        passwordTextField = MadokaTextField()
        emailLabel = UILabel()
        passwordLabel = UILabel()
        errorLabel = UILabel()
        loginButton = UIButton()
        signUpButton = UIButton()
        forgetButton = UIButton()
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        
        // MARK: - errorLabel Start
        // MARK: - errorLabel End
    
        // MARK: - emailLabel Start
        emailLabel.font = UIFont(name: "Gurmukhi MN", size: 22)
        emailLabel.text = "Email"
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(emailLabel)
        
        emailLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 200.0).isActive = true
        emailLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 22.0).isActive = true
        emailLabel.widthAnchor.constraint(equalToConstant: NATIVE_BOUND_SIZE.width * 0.9).isActive = true
        emailLabel.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        // MARK: - emailLabel End
        
        // MARK: - emailTextField Start
        emailTextField.backgroundColor = UIColor.clear
        emailTextField.borderColor = MY_PURPLE
        emailTextField.borderStyle = .line
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(emailTextField)
        
        emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 11.0).isActive = true
        emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 22.0).isActive = true
        emailTextField.widthAnchor.constraint(equalToConstant: NATIVE_BOUND_SIZE.width * 0.9).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        // MARK: - emailTextField End

        // MARK: - passwordLabel Start
        passwordLabel.font = UIFont(name: "Gurmukhi MN", size: 22)
        passwordLabel.text = "Password"
        passwordLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(passwordLabel)
        
        passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 44.0).isActive = true
        passwordLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 22.0).isActive = true
        passwordLabel.widthAnchor.constraint(equalToConstant: NATIVE_BOUND_SIZE.width * 0.9).isActive = true
        passwordLabel.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        // MARK: - passwordLabel End
        
        // MARK: - passwordTextField Start
        passwordTextField.backgroundColor = UIColor.clear
        passwordTextField.borderColor = MY_PURPLE
        passwordTextField.borderStyle = .bezel
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(passwordTextField)
        
        passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 11.0).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 22.0).isActive = true
        passwordTextField.widthAnchor.constraint(equalToConstant: NATIVE_BOUND_SIZE.width * 0.9).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        // MARK: - passwordTextField End
        
        // MARK: - loginButton Start
        loginButton.backgroundColor = MY_PURPLE
        loginButton.setTitle("Login", for: .normal)
        loginButton.titleLabel?.textAlignment = .center
        loginButton.titleLabel?.font = UIFont(name: "Gurmukhi MN", size: 22)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(loginButton)
        
        loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 11.0).isActive = true
        loginButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: NATIVE_BOUND_SIZE.width / 2 - 150).isActive = true
        loginButton.widthAnchor.constraint(equalToConstant: 300.0).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        // MARK: - loginButton End
        
        // MARK: - forgetButton Start
        forgetButton.backgroundColor = UIColor.clear
        forgetButton.setTitle("パスワードを忘れた場合", for: .normal)
        forgetButton.titleLabel?.textAlignment = .left
        forgetButton.setTitleColor(MY_PURPLE, for: .normal)
        forgetButton.titleLabel?.font = UIFont(name: "Gurmukhi MN", size: 11)
        forgetButton.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(forgetButton)
        
        forgetButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 11.0).isActive = true
        forgetButton.trailingAnchor.constraint(equalTo: loginButton.trailingAnchor, constant: 0.0).isActive = true
        forgetButton.widthAnchor.constraint(equalToConstant: 130.0).isActive = true
        forgetButton.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        // MARK: - forgetButton End
        
        // MARK: - singUpButton Start
        signUpButton.backgroundColor = UIColor.clear
        signUpButton.setTitle("新規登録", for: .normal)
        signUpButton.titleLabel?.textAlignment = .center
        signUpButton.setTitleColor(MY_PURPLE, for: .normal)
        signUpButton.titleLabel?.font = UIFont(name: "Gurmukhi MN", size: 22)
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(signUpButton)
        
        signUpButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 99.0).isActive = true
        signUpButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: NATIVE_BOUND_SIZE.width / 2 - 150).isActive = true
        signUpButton.widthAnchor.constraint(equalToConstant: 300.0).isActive = true
        signUpButton.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        // MARK: - singUpButton End

        // MARK: - self Start
        self.backgroundColor = MY_YELLOW
        // MARK: - self End
    }
}
