//
//  Bill.swift
//  C0751145_MidTerm_MAD3115S2019
//
//  Created by Ankita Pabbi on 2019-07-12.
//  Copyright © 2019 Ankita Pabbi. All rights reserved.
//

import Foundation
enum Bill_Type {
    case  Internet, Mobile, Hydro
}

class Bill {
    var bill_id: Int?
    var bill_date: Date
    var bill_type: String?
    var bill_total: Float
    
    // Total is a Computed Property so we have to calculate here ...
    var totalBill:Float{
        var tb:Float = 0.0
        // tb = self.bill_total
        return tb
    }
    
    
    init(b_id:Int, b_date:Date, b_type:String ,b_total:Float) {
        self.bill_id = b_id
        self.bill_date = b_date
        self.bill_type = b_type
        self.bill_total = b_total
    }
    
    
    
    
    init() {
        self.bill_id = Int()
        self.bill_date = Date()
        self.bill_type = String()
        self.bill_total = Float()
    }
}
