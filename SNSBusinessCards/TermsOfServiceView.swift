//
//  TermsOfServiceView.swift
//  SNSBusinessCards
//
//  Created by 元木嵩人 on 2018/03/05.
//  Copyright © 2018年 元木嵩人. All rights reserved.
//

import UIKit

class TermsOfServiceView: UIView {
    var termsView: UIView
    var termsLabel: UILabel
    var termsTextView: UITextView
    var backButton: UIButton
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    required init?(number: Int) {
        termsView = UIView()
        termsLabel = UILabel()
        termsTextView = UITextView()
        backButton = UIButton()
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        
        // MARK: - termsView Start
        // MARK: - termsView End
        
        // MARK: - termsLabel Start
        // MARK: - termsLabel End
        
        // MARK: - termsButton Start
        // MARK: - termsButton End
        
        // MARK: - backButton Start
        // MARK: - backButton End
        
        // MARK: - self Start
        self.backgroundColor = UIColor.clear
        // MARK: - self End
    }
}
