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
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    required init?(model: NCMBUser) {
        emailTextField = MadokaTextField()
        passwordTextField = MadokaTextField()
        emailLabel = UILabel()
        passwordLabel = UILabel()
        errorLabel = UILabel()
        loginBUtton = UIButton()
        signUpButton = UIButton()
        forgetButton = UIButton()
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    
        // MARK: - emailTextField Start
        // MARK: - emailTextField End

        // MARK: - passwordTextField Start
        // MARK: - passwordTextField End

        // MARK: - emailLabel Start
        // MARK: - emailLabel End

        // MARK: - passwordLabel Start
        // MARK: - passwordLabel End

        // MARK: - errorLabel Start
        // MARK: - errorLabel End
    }
}
