//
//  CartView.swift
//  Quarta_Aula
//
//  Created by Gabriel Fanto on 10/01/20.
//  Copyright © 2020 Gabriel Fanto. All rights reserved.
//

import SwiftUI

struct CartView: View{
    
    @EnvironmentObject var order: Order
    
    var body: some View{
        List {
            ForEach(0 ..< order.products.count) { index in
                Text(self.order.products[index])
            }
        }.navigationBarTitle("Downloaded Apps")
    }
}
