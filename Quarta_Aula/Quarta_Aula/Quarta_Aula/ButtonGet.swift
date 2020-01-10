//
//  ButtonGet.swift
//  Quarta_Aula
//
//  Created by Gabriel Fanto on 10/01/20.
//  Copyright © 2020 Gabriel Fanto. All rights reserved.
//

import SwiftUI

struct ButtonGet: View{
    
    @Binding var isAppDownloaded: Bool
    
    var body : some View {
        Button(action: {
            if self.isAppDownloaded{
                
            }
        } ) {
            Text(isAppDownloaded ? "OPEN" : "GET").bold().foregroundColor(.blue).frame(width: 60, height: 30, alignment: .center).background(Color.gray.opacity(0.2)).cornerRadius(10)
        }.buttonStyle()
    }
}
