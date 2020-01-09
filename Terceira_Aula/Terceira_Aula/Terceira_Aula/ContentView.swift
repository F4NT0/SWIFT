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
    
    @State var popular: [App] = [ // Para colocar todas as telas em uma estrutura para o foreach
        App(tittle: "Dig this", textInfo: "Digging puzzles? Dig this!", buttonTittle: "GET", tittleimages: "icon"),
        App(tittle: "Linkedin Learning", textInfo: "Online Courses to Learn Skills", buttonTittle: "GET", tittleimages: "linkedin")
    ];
    
    @State var weLove: [App] = [
        App(tittle: "Slideshow - Movie Video Maker", textInfo: "Create & Edit with Pictures", buttonTittle: "GET", tittleimages: "videomaker"),
        App(tittle: "The Sims Medieval", textInfo: "Play the best the Sims", buttonTittle: "GET", tittleimages: "sims")
    ];
    
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
        
        
        VStack{
            Section(header: Text("Apps")){
            Text("Popular Apps").bold().font(.system(size: 20)).frame(width: UIScreen.main.bounds.width/2.0, height: nil, alignment: .leading)
            List(popular){ popular in
                AppVisualizer(model: popular)
            };
        }
        
            Section(header: Text("Apps we love")){
                Text("Apps we love").bold().font(.system(size: 20)).frame(width: UIScreen.main.bounds.width/2.0, height: nil, alignment: .leading)
                List(weLove){ weLove in
                    AppVisualizer(model: weLove)
                }
            }
            
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
