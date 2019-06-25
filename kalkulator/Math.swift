//
//  Math.swift
//  kalkulator
//
//  Created by Five Code Developmet on 24/06/19.
//  Copyright © 2019 akbar. All rights reserved.
//

import Foundation

enum operators: String {
    case kali = "x"
    case bagi = "/"
    case tambah = "+"
    case kurang = "-"
    case persen = "%"
    case empty = ""
}

class Math {
    
    var runningNumber: String!
    var leftNumber: String!
    var rightNumber: String!
    var result: String!
    var typeOfOperator = operators.empty
    
}
