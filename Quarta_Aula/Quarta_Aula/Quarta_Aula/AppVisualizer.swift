//
//  AppVisualizer.swift
//  Quarta_Aula
//
//  Created by Gabriel Fanto on 10/01/20.
//  Copyright © 2020 Gabriel Fanto. All rights reserved.
//

import SwiftUI

struct AppVisualizer: View {
    
    @State private var isAppDownloaded = false
    @State private var showingShare = false
    
    var model: App
    
    var body: some View{
        NavigationLink(destination: AppInfo()){
            HStack{
                Image(model.tittleimages)
                    .resizable()
                .frame(width: 60, height: 60, alignment: .center)
                .cornerRadius(20)
                
                VStack{
                    Text(model.tittle).bold().font(.system(size: 15)).frame(width: UIScreen.main.bounds.width*0.5, height: nil, alignment: .leading)
                    Text(model.textInfo).foregroundColor(.gray).frame(width: UIScreen.main.bounds.width/2.0, height: nil, alignment: .leading)
                    
                }.frame(width: nil, height: 50, alignment: .leading)
                VStack{
                    ButtonGet(isAppDownloaded: $isAppDownloaded)
                    
                    Text("In App Purchases").foregroundColor(.gray).font(.system(size: 7)).frame(width: nil, height: nil, alignment: .leading)
                }
            }
        }
    }
}
