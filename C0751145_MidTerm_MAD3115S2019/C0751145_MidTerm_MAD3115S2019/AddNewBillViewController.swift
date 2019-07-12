//
//  AddNewBillViewController.swift
//  C0751145_MidTerm_MAD3115S2019
//
//  Created by Ankita Pabbi on 2019-07-12.
//  Copyright © 2019 Ankita Pabbi. All rights reserved.
//

import UIKit

class AddNewBillViewController: UIViewController {

    @IBOutlet weak var segmentBillType: UISegmentedControl!
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var lblUnits: UILabel!
    
    @IBOutlet weak var txtUnits: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnDone(_ sender: Any) {
        if self.segmentBillType.selectedSegmentIndex == 0{
            print("hydro")
            var unit = Int(self.txtUnits.text ?? "0")
            var bill = Hydro.init(bill_id: 4, bill_date: Date(), bill_type: "Hydrp", totalBillAmount: 90.66, a_name: self.txtName.text ?? "abc", u_consume: unit!)
            Customer.existig_Customer.bill_Dictionary[6] = bill
            
        }else if self.segmentBillType.selectedSegmentIndex == 1{
             print("internet")
            var unit = Int(self.txtUnits.text ?? "0")
            var bill = Internet(bill_id: 4, bill_date: Date(), bill_type: "InterNet", totalBillAmount: 29.0, p_name: self.txtName.text ?? "abc", i_gb_used: Float(unit!))
            Customer.existig_Customer.bill_Dictionary[7] = bill
            
        }
        else if self.segmentBillType.selectedSegmentIndex == 2{
             print("Mobile")
        }
    }
    
    @IBAction func segmentBillType(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            self.lblName.text = "Agency Name"
            self.lblUnits.text = "Unit Concumed" 
        }else if sender.selectedSegmentIndex == 1{
            self.lblName.text = "Provider Name"
            self.lblUnits.text = "Internet GB Used"
        }else if sender.selectedSegmentIndex == 2{
            
        }
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
