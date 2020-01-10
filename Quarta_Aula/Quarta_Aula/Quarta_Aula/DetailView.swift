//
//  DetailView.swift
//  Quarta_Aula
//
//  Created by Gabriel Fanto on 10/01/20.
//  Copyright © 2020 Gabriel Fanto. All rights reserved.
//

import SwiftUI

struct DetailView: View{
    @State var isPresented = false
    
    var productName: String
    
    var body: some View{
        Button(action: {
            self.isPresented = true
        }){
            Text("Show Sheet")
        }.sheet(isPresented: $isPresented){
            Text("This is presented as a Modal")
        }.navigationBarTitle(productName)
    }
}
