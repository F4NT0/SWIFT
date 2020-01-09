//
//  Level.swift
//  Segunda Aula
//
//  Created by Gabriel Fanto on 09/01/20.
//  Copyright © 2020 Gabriel Fanto. All rights reserved.
//

import SwiftUI

struct Level: View {
    
    @Binding var showingAlert: Bool
    @Binding var number: Int
    @Binding var sliderValue: Double
    @Binding var end: Bool
    
    
    var body: some View {
        Button(action: {
            self.showingAlert = true
            if Int(self.sliderValue) == self.number{
                self.end = true
            }
        }){
            Text("Try it Guess!").bold().foregroundColor(.white)
                .frame(width: 150, height: 50, alignment: .center)
                .background(Color.purple).cornerRadius(30)
        }.alert(isPresented: $showingAlert){
            if(end == true){
                return  Alert(title: Text("Congratulations! \u{1F44D}"),
                              message: Text("You insert \(Int(sliderValue))"),
                              dismissButton: .default(Text("OK")))
            }
            return  Alert(title: Text("Fail! \u{26D4}"),
                          message: Text("You insert \(Int(sliderValue))"),
                          dismissButton: .default(Text("OK")))
            
        }
    }
}

