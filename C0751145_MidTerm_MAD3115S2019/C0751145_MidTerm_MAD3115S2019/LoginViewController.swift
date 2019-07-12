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
        
        let pList = Bundle.main.path(forResource: "UserInfo", ofType: "plist")
        if let dict = NSDictionary(contentsOfFile: pList!)
        {
             if let users = dict["Users"] as? [[String:Any]] {
                for user in users {
//                    let userEmail = user["userEmail"] as! String
//                    let userPassword = user["userPassword"] as! String
                    
                    if email ==  user["userEmail"] as! String {
                        if password == user["userPassword"] as! String{
                            
                        }
                        
                    }
                    else{
                        let alert = UIAlertController(title: "Error", message: "User Email / Password Incorrect", preferredStyle: UIAlertController.Style.alert)
                        
                        let actionOk = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
                        let actionCanel = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil)
                        alert.addAction(actionOk)
                        alert.addAction(actionCanel)
                        self .present(alert, animated: true ,completion: nil)
                    }
                    
                }
             }
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }


}

