//
//  SignUpView.swift
//  SNSBusinessCards
//
//  Created by 元木嵩人 on 2018/03/04.
//  Copyright © 2018年 元木嵩人. All rights reserved.
//

import UIKit
import TextFieldEffects

class SignUpView: UIView {
    var mainLabel: UILabel
    var emailLabel: UILabel
    var emailTextField: MadokaTextField
    var termsSwitch: UISwitch
    var termsButton: UIButton
    var termsLabel: UILabel
    var sendButton: UIButton
    var backButton: UIButton
    
    let NATIVE_BOUND_SIZE = UIScreen.main.bounds.size
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    required init?(number: Int) {
        mainLabel = UILabel()
        emailLabel = UILabel()
        emailTextField = MadokaTextField()
        termsSwitch = UISwitch()
        termsButton = UIButton()
        termsLabel = UILabel()
        sendButton = UIButton()
        backButton = UIButton()
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))

        // MARK: - mainLabel Start
        mainLabel.font = UIFont(name: "Gurmukhi MN", size: 44)
        mainLabel.text = "新規登録"
        mainLabel.textColor = UIColor.black
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(mainLabel)
        
        mainLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 110.0).isActive = true
        mainLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: NATIVE_BOUND_SIZE.width / 2 - 100).isActive = true
        mainLabel.widthAnchor.constraint(equalToConstant: 200.0).isActive = true
        mainLabel.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        // MARK: - mainLabel End
        
        // MARK: - emailLabel Start
        emailLabel.font = UIFont(name: "Gurmukhi MN", size: 22)
        emailLabel.text = "登録メール受信用のEmail"
        emailLabel.textColor = UIColor.black
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(emailLabel)
        
        emailLabel.topAnchor.constraint(equalTo: mainLabel.topAnchor, constant: 110.0).isActive = true
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
        
        // MARK: - termsSwitch Start
        termsSwitch.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(termsSwitch)
        // MARK: - termsSwitch End
        
        // MARK: - termsButton Start
        termsButton.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(termsButton)
        // MARK: - termsButton End
        
        // MARK: - termsLabel Start
        termsLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(termsLabel)
        // MARK: - termsLabel End
        
        // MARK: -  sendButtonStart
        sendButton.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(sendButton)
        // MARK: - sendButton End
        
        // MARK: - backButton Start
        backButton.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(backButton)
        // MARK: - backButton End
        
        // MARK: - self Start
        self.backgroundColor = MY_YELLOW
        // MARK: - self End
    }
}
