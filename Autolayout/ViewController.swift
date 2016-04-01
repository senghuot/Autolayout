//
//  ViewController.swift
//  Autolayout
//
//  Created by Senghuot Lim on 3/31/16.
//  Copyright © 2016 Home Brew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func toggleSecurity(sender: UIButton) {
        secure = !secure
    }
    
    @IBAction func login(sender: UIButton) {
        
    }
    
    var secure = false { didSet { updateUI() } }
    
    private func updateUI() {
        passwordField.secureTextEntry = secure
        passwordLabel.text = secure ? "Secure Password" : "Password"
    }
}

