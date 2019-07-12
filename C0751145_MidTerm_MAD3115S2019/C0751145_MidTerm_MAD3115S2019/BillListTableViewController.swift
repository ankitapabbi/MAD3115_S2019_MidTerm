//
//  BillListTableViewController.swift
//  C0751145_MidTerm_MAD3115S2019
//
//  Created by Ankita Pabbi on 2019-07-11.
//  Copyright © 2019 Ankita Pabbi. All rights reserved.
//

import UIKit

class BillListTableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   

    
    @IBOutlet weak var tblCustomerList: UITableView!
    var customer_array = Array<Customer>()
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        var bill_1  = Mobile(bill_id: 1, bill_date: Date(), bill_type: "Mobile",totalBillAmount: 88.90, m_name: "Google", p_name: "Pixel", m_num: "6781234567", gb_use: 50.9, min_use: 30.7)
        
        var bill_2  = Mobile(bill_id: 2, bill_date: Date(), bill_type: "Mobile",totalBillAmount: 98.90, m_name: "Sony", p_name: "E2", m_num: "4571234567", gb_use: 60.9, min_use: 70.7)
        var bill_3  = Mobile(bill_id: 1, bill_date: Date(), bill_type: "Mobile", totalBillAmount: 100.08,m_name: "Google", p_name: "Pixel", m_num: "6981230067", gb_use: 30.9, min_use: 15.7)
        
        var bill_4 = Internet(bill_id: 4, bill_date: Date(), bill_type: "Internet",totalBillAmount: 38.70, p_name: "BSNL", i_gb_used: 55.67)
        var bill_5 = Internet(bill_id: 5, bill_date: Date(), bill_type: "Internet",totalBillAmount: 45.99, p_name: "Tata", i_gb_used: 39.67)
        
        var bill_6 = Hydro(bill_id: 6, bill_date: Date(), bill_type: "Hydro", totalBillAmount: 76.09,a_name: "Gig Tech", u_consume: 77)
        var bill_7 = Hydro(bill_id: 7, bill_date: Date(), bill_type: "Hydro",totalBillAmount: 234.66, a_name: "Info Tech", u_consume: 97)
        
        // creating customers
        
        var customer_1 = Customer(customerId: 1, firstName: "Vishal", lastName: "Pabbi", email: "vishal@gmail.com",ph_num: "6893451234")
        
        customer_1.bill_Dictionary[0] = bill_1
         customer_1.bill_Dictionary[1] = bill_2
        customer_1.bill_Dictionary[2] = bill_3
        
        
        var customer_2 = Customer(customerId: 2, firstName: "Diksha", lastName: "Sharma", email: "diksha@gmail.com",ph_num: "6893498234")
         customer_2.bill_Dictionary[0] = bill_4
        customer_2.bill_Dictionary[1] = bill_5
        
        var customer_3 =  Customer(customerId: 3, firstName: "Ankita", lastName: "Pabbi", email: "apabbi@gmail.com",ph_num: "6453451234")
         customer_3.bill_Dictionary[0] = bill_6
         customer_3.bill_Dictionary[1] = bill_4
         customer_3.bill_Dictionary[2] = bill_2
         customer_3.bill_Dictionary[3] = bill_7
        
        
        // adding customers in its array
        self.customer_array = [customer_1, customer_2, customer_3]
        self.tblCustomerList.delegate = self
        self.tblCustomerList.dataSource = self
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return customer_array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  cell = tableView.dequeueReusableCell(withIdentifier: "customerCell") as! UITableViewCell
        cell.textLabel?.text = self.customer_array[indexPath.row].fullName
        // click action on perticular customer name using tap gesture
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.tapToGoOnCustomerDetail(_:)))
        cell.tag = indexPath.row
        cell.addGestureRecognizer(tapGesture)
        
        return cell
    }

    @objc func tapToGoOnCustomerDetail(_ sender: UITapGestureRecognizer) {
        print(sender.view!.tag)// to display index
       // let sb = UIStoryboard(name: "Main", bundle: nil)
        //let cust = sb.instantiateViewController(withIdentifier: "customerDetail") as! ShowBillDetailsViewController
      
        
        //self.navigationController?.pushViewController(cust,animated: true)
        // to get perticular index
         Customer.existig_Customer = self.customer_array[(sender.view?.tag)!]
        self.performSegue(withIdentifier: "furtherDetails", sender: nil)
       
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
