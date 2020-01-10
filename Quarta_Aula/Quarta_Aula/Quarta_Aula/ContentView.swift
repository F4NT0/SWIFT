//
//  ContentView.swift
//  Quarta_Aula
//
//  Created by Gabriel Fanto on 10/01/20.
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
    @EnvironmentObject var order :  Order
    private var products = ["Macbook", "iphone"]
    
    @State var popular: [App] = [ // Para colocar todas as telas em uma estrutura para o foreach
        App(tittle: "Dig this", textInfo: "Digging puzzles? Dig this!", buttonTittle: "GET", tittleimages: "icon"),
        App(tittle: "Linkedin Learning", textInfo: "Online Courses to Learn Skills", buttonTittle: "GET", tittleimages: "linkedin")
    ];
    
    
    
    
    var body: some View {
        List {
//            ForEach(0 ..< products.count){index in
//                NavigationLink(destination: DetailView(productName: self.products[index])) {
//                    HStack {
//                        Text(self.products[index])
//                        Spacer()
//
//                        Button(action: {
//                            self.order.products.append(self.products[index])
//                        }){
//                            Text("Comprar")
//                        }
//                        .buttonStyle(PlainButtonStyle())
//                        .foregroundColor(.blue)
//                    }
//                }
//
//            }
            
            ForEach(popular){ popular in
                AppVisualizer(model: popular)
            }
        }.navigationBarTitle("App Store")
    }
}


//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
