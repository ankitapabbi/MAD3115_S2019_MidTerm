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
    var customerId : String
    var firstName : String
    var lastName: String
    
    // computed value
    var fullName: String
    {
        return "\(self.firstName) \(self.lastName)"
    }
    var email: String
    
    var billDictionary = [Int:Bill]()
    
    // computed value
    var TotalAmountToPay: Float
    {
        var TotalAmount: Float = 0.0
        
        for bill in billDictionary
        {
            TotalAmount = TotalAmount + bill.value.bill_total
        }
        return TotalAmount
    }
    init(){
        self.customerId = String()
        self.firstName = String()
        self.lastName = String()
        self.email = String()
    }
    init(customerId: String, firstName: String, lastName: String, email: String)
    {
        self.customerId = customerId
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
    }
}
