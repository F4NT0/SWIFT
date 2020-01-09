//
//  ButtonUp.swift
//  Terceira_Aula
//
//  Created by Gabriel Fanto on 09/01/20.
//  Copyright © 2020 Gabriel Fanto. All rights reserved.
//

import SwiftUI

struct ButtonUp: View {
    
    @Binding var showingShare: Bool
    
    var body: some View{
        
        Button(action: { self.showingShare = true }){
            Image(systemName: "square.and.arrow.up").foregroundColor(.blue).font(.system(size: 22))
        }.alert(isPresented: $showingShare) { () -> Alert in
            Alert(title: Text("Important message"), message: Text("You just shared an app"), dismissButton:
                .default(Text("Got it!")))
        }
    }
    
}
