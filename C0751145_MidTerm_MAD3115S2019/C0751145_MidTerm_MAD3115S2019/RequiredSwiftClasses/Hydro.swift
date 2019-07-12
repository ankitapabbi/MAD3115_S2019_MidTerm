//
//  Hydro.swift
//  C0751145_MidTerm_MAD3115S2019
//
//  Created by Ankita Pabbi on 2019-07-12.
//  Copyright © 2019 Ankita Pabbi. All rights reserved.
//

import Foundation
class Hydro : Bill {
    var agency_name: String?
    var unit_consumed: Int?
    
    init(bill_id: Int,bill_date: Date, bill_type: String,totalBillAmount: Float, a_name: String, u_consume: Int) {
        self.agency_name = a_name
        self.unit_consumed = u_consume
        super.init(b_id: bill_id, b_date: bill_date, b_type: bill_type,b_total: totalBillAmount)
    }

}
