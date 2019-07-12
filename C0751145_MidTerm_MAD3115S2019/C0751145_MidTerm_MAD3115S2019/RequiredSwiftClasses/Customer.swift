//
//  Customer.swift
//  C0751145_MidTerm_MAD3115S2019
//
//  Created by Ankita Pabbi on 2019-07-12.
//  Copyright © 2019 Ankita Pabbi. All rights reserved.
//

import Foundation
class Customer
{
    static var activeCustomer = Customer()
    var customerId : Int
    var firstName : String
    var lastName: String
    
    // computed value
    var fullName: String
    {
        return "\(self.firstName) \(self.lastName)"
    }
    var email: String
    var phone: String
    
    var bill_Dictionary = [Int:Bill]()
    
    // computed value
    var TotalAmountToPay: Float
    {
        var TotalAmount: Float = 0.0
        
        for bill in bill_Dictionary
        {
            TotalAmount = TotalAmount + bill.value.bill_total
        }
        return TotalAmount
    }
    init(){
        self.customerId = Int()
        self.firstName = String()
        self.lastName = String()
        self.email = String()
        self.phone = String()
    }
    init(customerId: Int, firstName: String, lastName: String, email: String,ph_num: String)
    {
        self.customerId = customerId
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.phone = ph_num
    }
}
