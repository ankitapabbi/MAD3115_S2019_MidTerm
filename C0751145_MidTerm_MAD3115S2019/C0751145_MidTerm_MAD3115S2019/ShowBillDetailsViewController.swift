//
//  ShowBillDetailsViewController.swift
//  C0751145_MidTerm_MAD3115S2019
//
//  Created by Ankita Pabbi on 2019-07-12.
//  Copyright © 2019 Ankita Pabbi. All rights reserved.
//

import UIKit

class ShowBillDetailsViewController: UIViewController {

    
    @IBOutlet weak var lblCustomerId: UILabel!
    
    @IBOutlet weak var lblCustomerPhone: UILabel!
    @IBOutlet weak var lblCustomerEmail: UILabel!
    
    @IBOutlet weak var lblCustomerName: UILabel!
    
    @IBOutlet weak var lblCustomerTotal: UILabel!
    
    
    @IBOutlet weak var tblBills: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
