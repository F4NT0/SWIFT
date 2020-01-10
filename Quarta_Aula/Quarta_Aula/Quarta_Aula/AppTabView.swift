//
//  AppTabView.swift
//  Quarta_Aula
//
//  Created by Gabriel Fanto on 10/01/20.
//  Copyright © 2020 Gabriel Fanto. All rights reserved.
//

import SwiftUI

struct AppTabView: View{
    
    var body : some View{
        
        TabView{
            NavigationView{
                ContentView()
            }.tabItem {
                Image(systemName: "list.dash")
                Text("App Store")
            }
            
            NavigationView{
                CartView()
            }.tabItem{
                Image(systemName: "list.dash")
                Text("My Apps")
            }
        }
    }
}
