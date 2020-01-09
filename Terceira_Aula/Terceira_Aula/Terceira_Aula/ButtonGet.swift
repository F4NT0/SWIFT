//
//  ButtonGet.swift
//  Terceira_Aula
//
//  Created by Gabriel Fanto on 09/01/20.
//  Copyright © 2020 Gabriel Fanto. All rights reserved.
//

import SwiftUI

struct ButtonGet: View{
    
    @Binding var showingAlert: Bool
    
    var body : some View {
        Button(action: {self.showingAlert = true} ) {
            Text("GET").bold().foregroundColor(.white).frame(width: 60, height: 30, alignment: .center).background(Color.blue).cornerRadius(10)
        }.alert(isPresented: $showingAlert) {
            Alert(title: Text("Important message"), message: Text("You just bought a new App for your Iphone"), dismissButton: .default(Text("Got it!")))
        }
    }
}
