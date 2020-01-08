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
    @State private var sliderValue: Double = 0
    var number:Int = Int.random(in: 0..<20)
    @State var end = false
    @State private var selectedIndex = 0
    private var options = ["Normal", "Hard"]
    
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
                        Text("\(number)").bold().foregroundColor(.purple)
                        Spacer()
                    }.padding(20)
                    
                    
                    HStack{
                        Text("0").bold()
                        Slider(value: $sliderValue , in: (0...20))
                        Text("20").bold()
                    }.padding(20)
                    
                    HStack{
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
                if(selectedIndex == 1){
                    HStack{
                        Text("Put the Slider as close as you can to ") // Chamando uma variavel dentro
                            .bold().font(.system(size: 20))
                        Text("\(number)").bold().foregroundColor(.purple)
                        Spacer()
                    }.padding(20)
                    
                    
                    HStack{
                        Text("0").bold()
                        Slider(value: $sliderValue , in: (0...50))
                        Text("50").bold()
                    }.padding(20)
                    
                    HStack{
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
            }
        }
    }
    
}
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
