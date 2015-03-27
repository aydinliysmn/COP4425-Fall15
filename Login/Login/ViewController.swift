//
//  ViewController.swift
//  Login
//
//  Created by Hasan Soysal on 27/03/15.
//  Copyright (c) 2015 Hasan Soysal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldUserName : UITextField!
    @IBOutlet weak var textFieldPassword : UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func buttonLoginTapped()
    {
        if textFieldUserName.text == "1" && textFieldPassword.text == "2"
        {
            UIAlertView(title: "Success", message: "Hey you are great", delegate: nil, cancelButtonTitle: "OK").show()
        }
    }



}

