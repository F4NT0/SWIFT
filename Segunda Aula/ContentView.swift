//
//  ContentView.swift
//  Segunda Aula
//
//  Created by Gabriel Fanto on 08/01/20.
//  Copyright © 2020 Gabriel Fanto. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingAlert = false
    @State private var sliderValue = 0.0
    @State var numberNormal:Int = Int.random(in: 0..<20)
    @State var numberHard:Int = Int.random(in: 0..<50)
    @State var end = false
    @State private var selectedIndex = 0
    private var options = ["Normal", "Hard"]
    @State var levelNormal = 20
    @State var levelHard = 50
    
    var body: some View {
        
        ScrollView(.vertical){
            VStack{
                
                Picker(selection: $selectedIndex, label: Text("Options")){
                    ForEach(0 ..< options.count){
                        Text(self.options[$0])
                    }
                }.pickerStyle(SegmentedPickerStyle())
                
                Spacer()
                
                if(selectedIndex == 0){
                    HStack{
                        Text("Put the Slider as close as you can to ") // Chamando uma variavel dentro
                            .bold().font(.system(size: 20))
                        Text("\(numberNormal)").bold().foregroundColor(.purple)
                        Spacer()
                    }.padding(20)
                    
                    
                    HStack{
                        Text("0").bold()
                        Slider(value: $sliderValue , in: (0...20))
                        Text("20").bold()
                    }.padding(20)
                    
                    HStack{
                        Level(showingAlert: $showingAlert, number: $numberNormal, sliderValue: $sliderValue, end: $end)
                    }
                }
                if(selectedIndex == 1){
                    HStack{
                        Text("Put the Slider as close as you can to ") // Chamando uma variavel dentro
                            .bold().font(.system(size: 20))
                        Text("\(numberHard)").bold().foregroundColor(.purple)
                        Spacer()
                    }.padding(20)
                    
                    
                    HStack{
                        Text("0").bold()
                        Slider(value: $sliderValue , in: (0...50))
                        Text("50").bold()
                    }.padding(20)
                    
                    HStack{
                        Level(showingAlert: $showingAlert, number: $numberHard, sliderValue: $sliderValue, end: $end)
                    }
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
