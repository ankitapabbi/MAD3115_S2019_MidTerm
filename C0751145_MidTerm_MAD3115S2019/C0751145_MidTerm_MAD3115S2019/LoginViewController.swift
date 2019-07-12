//
//  ViewController.swift
//  C0751145_MidTerm_MAD3115S2019
//
//  Created by Ankita Pabbi on 2019-07-11.
//  Copyright © 2019 Ankita Pabbi. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var txtUserEmail: UITextField!
    
    @IBOutlet weak var txtUserPassword: UITextField!
  
    @IBOutlet weak var switchRememberMe: UISwitch!
    @IBAction func btnLogin(_ sender: UIButton) {
        
        var email = self.txtUserEmail.text!
        var password = self.txtUserPassword.text!
        
        let pList = Bundle.main.path(forResource: "UsersList", ofType: "plist")
        if let dict = NSDictionary(contentsOfFile: pList!)
        {
             if let users = dict["Users"] as? [[String:Any]] {
                for user in users {
                    let userEmail = user["userEmail"] as! String
                    let userPassword = user["userPassword"] as! String
                    
                    if email == userEmail as! String  {
                        
                        if password == userPassword as String{
                            
                        }
                    }
                    
                }
            }
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }


}

