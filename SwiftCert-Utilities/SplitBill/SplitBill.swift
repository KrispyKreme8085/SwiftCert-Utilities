//
//  SplitBill.swift
//  SwiftCert-Utilities
//
//  Created by Karson Mellott on 3/9/26.
//

import SwiftUI

struct SplitBill: View {
    @State var bill: String = ""
    @State var tip: String = ""
    @State var people: String = ""
    var body: some View {
        VStack{
            Text("Bill")
            TextField("Total", text: $bill)
            
            Text("Tip")
            TextField("Tip", text: $tip)
            
            Text("Number of People")
            TextField("No. of People", text: $people)
            
            Text("Total with Tip")
            
            Text("Total per person")
            
        }
    }
}

#Preview {
    SplitBill()
}
