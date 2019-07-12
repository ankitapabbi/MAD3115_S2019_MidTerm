//
//  Internet.swift
//  C0751145_MidTerm_MAD3115S2019
//
//  Created by Ankita Pabbi on 2019-07-12.
//  Copyright © 2019 Ankita Pabbi. All rights reserved.
//

import Foundation
class Internet: Bill{
    
    var provider_name: String?
    var internet_gb_used: Float?
    
    
    init(bill_id: Int,bill_date: Date,bill_type: String,totalBillAmount: Float,p_name: String, i_gb_used: Float) {
        self.provider_name = p_name
        self.internet_gb_used = i_gb_used
        super.init(b_id: bill_id, b_date: bill_date, b_type: bill_type,b_total: totalBillAmount)
        
    }

    
}
