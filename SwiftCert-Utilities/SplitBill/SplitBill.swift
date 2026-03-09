//
//  SplitBill.swift
//  SwiftCert-Utilities
//
//  Created by Karson Mellott on 3/9/26.
//

import SwiftUI

struct SplitBill: View {
    @State var bill: String = ""
    @State var tip: Double = 0.5
    @State var people: Int = 1
    @State var split: String = ""
    
    var body: some View {
        VStack{
            Text("Bill")
            TextField("Total", text: $bill)
                .frame(width: 100)
            
            Text("Tip")
            Slider(value: $tip, in: 0.0...1.0)
                .frame(width: 200)
            Text("\(tip.formatted(.percent.precision(.fractionLength(0))))")
            
            
            Stepper("Number of People:", value: $people, in: 1...20)
            Text("\(people)")
                .frame(width: 100)
            
            Button("Calculate") {
                split = Calculator(billAmount: Double(bill) ?? 0, tipPercentage: tip, people: people)
            }
            
            .padding()
            
            
            Text("Total per person: \(split)")
            
        }
    }
}

#Preview {
    SplitBill()
}
