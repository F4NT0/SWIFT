//
//  ContentView.swift
//  Terceira_Aula
//
//  Created by Gabriel Fanto on 09/01/20.
//  Copyright © 2020 Gabriel Fanto. All rights reserved.
//

import SwiftUI

struct App: Identifiable{ // Struct auxiliar
    var id: UUID = UUID() // cada vez usado tem um id unico
    var tittle: String
    var textInfo: String
    var buttonTittle: String
    var tittleimages: String
}

struct ContentView: View {
    
    @State var items: [App] = [ // Para colocar todas as telas em uma estrutura para o foreach
        App(tittle: "Dig this", textInfo: "Digging puzzles? Dig this!", buttonTittle: "GET", tittleimages: "icon"),
        
    ]
    
    var body: some View {
        
        // EM FORMA DE FOREACH
        
        //        ScrollView{
        //            ForEach(items){i in
        //                Image("icon")
        //                    .resizable()
        //                    .frame(width: 150, height: 150, alignment: .center)
        //                    .cornerRadius(30)
        //            }
        //        }
        
        // EM FORMA DE LIST
        
        List(items){ items in
            AppVisualizer(model: items)
        }
        
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
