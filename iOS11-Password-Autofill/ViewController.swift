//
//  ViewController.swift
//  iOS11-Password-Autofill
//
//  Created by Hans Knöchel on 03.07.17.
//  Copyright © 2017 Hans Knöchel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let textField = UITextField(frame: CGRect(x: 20, y: 30, width: 300, height: 40))
        textField.backgroundColor = UIColor.lightGray
        textField.textContentType = .username
        textField.placeholder = "Enter Username ..."
        
        let textField2 = UITextField(frame: CGRect(x: 20, y: textField.frame.size.height + 40, width: 300, height: 40))
        textField2.backgroundColor = UIColor.lightGray
        textField2.textContentType = .password
        textField2.placeholder = "Enter Password ..."
        textField2.isSecureTextEntry = true
        
        self.view.addSubview(textField)
        self.view.addSubview(textField2)
    }
}
