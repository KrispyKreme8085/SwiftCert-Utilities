//
//  Calculator.swift
//  SwiftCert-Utilities
//
//  Created by Karson Mellott on 3/9/26.
//

import Foundation

func Calculator(billAmount: Double, tipPercentage: Double, people: Int) -> String {
    let tip = billAmount * (tipPercentage / 100)
    
    let total = billAmount + tip
    
    let split = total / Double(people)
        
    return split.formatted(.currency(code: "USD"))
}
