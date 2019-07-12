//
//  ShowBillDetailsViewController.swift
//  C0751145_MidTerm_MAD3115S2019
//
//  Created by Ankita Pabbi on 2019-07-12.
//  Copyright © 2019 Ankita Pabbi. All rights reserved.
//

import UIKit

class ShowBillDetailsViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
  
    

    
    @IBOutlet weak var lblCustomerId: UILabel!
    
    @IBOutlet weak var lblCustomerPhone: UILabel!
    @IBOutlet weak var lblCustomerEmail: UILabel!
    
    @IBOutlet weak var lblCustomerName: UILabel!
    
    @IBOutlet weak var lblCustomerTotal: UILabel!
    
    
    @IBOutlet weak var tblBills: UITableView!
    
 
    @IBAction func btnBackToCustomerList(_ sender: Any) {
       
    }
    
    @IBAction func btnAddNewBill(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lblCustomerId.text = String(Customer.existig_Customer.customerId)
         self.lblCustomerName.text = Customer.existig_Customer.fullName
        self.lblCustomerEmail.text = Customer.existig_Customer.email
       self.lblCustomerPhone.text = Customer.existig_Customer.phone
        self.lblCustomerTotal.text = String(Customer.existig_Customer.TotalAmountPayable)
        
        self.tblBills.delegate = self
        self.tblBills.dataSource = self
        self.tblBills.reloadData()
        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Customer.existig_Customer.bill_Dictionary.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  cell = tableView.dequeueReusableCell(withIdentifier: "billCell") as! BillLayoutTableViewCell
        let cust = Customer.existig_Customer.bill_Dictionary[indexPath.row]
        
        cell.lblBillType.text = "Bill Type : \(cust!.bill_type)"
        cell.lblBillAmount.text = "Ammount : \(cust!.bill_total)"
        
        
        
        
//        let  cell = tableView.dequeueReusableCell(withIdentifier: "billCell") as! UITableViewCell
//
//      cell.textLabel?.text = Customer.existig_Customer.bill_Dictionary[indexPath.row]?.bill_type
        
       
        return cell
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
