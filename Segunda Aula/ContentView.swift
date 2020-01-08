//
//  ContentView.swift
//  Segunda Aula
//
//  Created by Gabriel Fanto on 08/01/20.
//  Copyright © 2020 Gabriel Fanto. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
@State private var isTogleOn = false // define como booleano automaticamente
    //Cada State e uma forma de definir a verdade do toggle
    
    var body: some View {
        VStack{
            Toggle(isOn: $isTogleOn){
                    Text("Are you a cat person?")
                }
                
                Text(isTogleOn ? "I am a cat person" : "I'm not a cat person") // serve para quando troca o estado do toggle
        }.padding(20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
