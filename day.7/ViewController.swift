//
//  ViewController.swift
//  day.7
//
//  Created by rawan  on 9/4/23.
//  Copyright © 2023 rawan . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textfieldname: UITextField!
    @IBOutlet var textfieldemail: UITextField!
    @IBOutlet var textfieldaddress: UITextField!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var address: UILabel!
    
    
    var addfrienddelegate : Myprotocol!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func savebuttonaction(_ sender: UIButton) {
        
        addfrienddelegate.addfriend(friend: Friend(name: textfieldname.text!, address: textfieldaddress.text!, email: textfieldemail.text!))
        navigationController?.popViewController(animated: true)
    }
    
    
    

}
