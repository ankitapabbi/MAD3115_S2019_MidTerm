//
//  Dollar.swift
//  C0751145_MidTerm_MAD3115S2019
//
//  Created by Ankita Pabbi on 2019-07-12.
//  Copyright © 2019 Ankita Pabbi. All rights reserved.
//

import Foundation
extension Float
{
    public func currency() -> String
    {
        return String.init(format: "$%0.2f", self)
    }
}
