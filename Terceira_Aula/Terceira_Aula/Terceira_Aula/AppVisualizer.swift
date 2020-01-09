//
//  AppVisualizer.swift
//  Terceira_Aula
//
//  Created by Gabriel Fanto on 09/01/20.
//  Copyright © 2020 Gabriel Fanto. All rights reserved.
//

import SwiftUI

struct AppVisualizer: View {
    
    @State private var showingAlert = false
    @State private var showingShare = false
    
    var model: App
    
    var body: some View{
        HStack{
            Image(model.tittleimages)
                .resizable()
            .frame(width: 150, height: 150, alignment: .center)
            .cornerRadius(30)
            
            VStack{
                Text(model.tittle).bold().font(.title).frame(width: UIScreen.main.bounds.width/2.0, height: nil, alignment: .leading)
                Text(model.textInfo).foregroundColor(.gray).frame(width: UIScreen.main.bounds.width/2.0, height: nil, alignment: .leading)
                Spacer()
                
                HStack{
                    ButtonGet(showingAlert: $showingAlert)
                    
                    Text("In App Purchases").foregroundColor(.gray).font(.system(size: 10)).frame(width: 55, height: nil, alignment: .leading)
                    Spacer()
                    
                    ButtonUp(showingShare: $showingShare)
                }
                
            }.frame(width: nil, height: 150, alignment: .center)
        }.padding(20)
    }
}
