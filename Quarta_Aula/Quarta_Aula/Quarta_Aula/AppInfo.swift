//
//  AppInfo.swift
//  Quarta_Aula
//
//  Created by Gabriel Fanto on 10/01/20.
//  Copyright © 2020 Gabriel Fanto. All rights reserved.
//

import SwiftUI

struct AppInfo: View {
    
    @State private var showingAlert = false
    @State private var showingShare = false
    
    var body : some View {
        VStack {
            TabView {
                
                ScrollView(.vertical) {
                    HStack {
                        Image("icon")
                            .resizable()
                            .frame(width: 150, height: 150, alignment: .center)
                            .cornerRadius(30)
                        Spacer()
                        VStack {
                            Text("Dig This!").bold().font(.title).frame(width: UIScreen.main.bounds.width/2.0, height: nil, alignment: .leading)
                            Text("Digging puzzles? Dig this!").foregroundColor(.gray).frame(width: UIScreen.main.bounds.width/2.0, height: nil, alignment: .leading)
                            Spacer()
                            HStack {
                                Button(action: {self.showingAlert = true} ) {
                                    Text("GET").bold().foregroundColor(.white).frame(width: 60, height: 30, alignment: .center).background(Color.blue).cornerRadius(10)
                                }.alert(isPresented: $showingAlert) {
                                    Alert(title: Text("Important message"), message: Text("You just bought a new App for your Iphone"), dismissButton: .default(Text("Got it!")))
                                }
                                Text("In App Purchases").foregroundColor(.gray).font(.system(size: 10)).frame(width: 55, height: nil, alignment: .leading)
                                Spacer()
                                Button(action: { self.showingShare = true }){
                                    Image(systemName: "square.and.arrow.up").foregroundColor(.blue).font(.system(size: 22))
                                }.alert(isPresented: $showingShare) { () -> Alert in
                                    Alert(title: Text("Important message"), message: Text("You just shared an app"), dismissButton:
                                        .default(Text("Got it!")))
                                }
                            }
                        }.frame(width: nil, height: 150, alignment: .center)
                    } .padding(20)
                    
                    HStack {
                        VStack{
                            HStack {
                                Text("4.7")
                                    .bold()
                                    .foregroundColor(.gray)
                                    .font(.system(size: 20)).frame(width: 35, height: 20, alignment: .center)
                                
                                Image(systemName: "star.fill")
                                    .foregroundColor(.gray)
                                    .frame(width: 10, height: 10, alignment: .center)
                                
                                Image(systemName: "star.fill")
                                    .foregroundColor(.gray)
                                    .frame(width: 12, height: 10, alignment: .center)
                                
                                Image(systemName: "star.fill")
                                    .foregroundColor(.gray)
                                    .frame(width: 12, height: 10, alignment: .center)
                                
                                Image(systemName: "star.fill")
                                    .foregroundColor(.gray)
                                    .frame(width: 12, height: 10, alignment: .center)
                                
                                Image(systemName: "star.fill")
                                    .foregroundColor(.gray)
                                    .frame(width: 12, height: 10, alignment: .center)
                            }
                            Text("105K Ratings").foregroundColor(.gray).font(.system(size: 10))
                        }
                        Spacer()
                        VStack{
                            Text("N°4")
                                .bold()
                                .foregroundColor(.gray)
                                .font(.system(size: 20))
                            
                            Text("Casual")
                                .foregroundColor(.gray)
                                .font(.system(size: 11))
                        }
                        Spacer()
                        VStack{
                            HStack{
                                Text("14").bold().background(Color.red).frame(width: 20, height: 20, alignment: .center).foregroundColor(.white).font(.system(size: 10))
                                Text("12+").bold().foregroundColor(.gray).font(.system(size: 20))
                            }
                            Text("Age").foregroundColor(.gray).font(.system(size: 15))
                        }
                        
                    }.padding(.leading, 20).padding(.trailing, 20)
                    
                    ScrollView(.horizontal){
                        HStack{
                            Image("imagem1").resizable().frame(width: 270, height: 500, alignment: .center)
                            Image("imagem2").resizable().frame(width: 270, height: 500, alignment: .center)
                            Image("imagem1").resizable().frame(width: 270, height: 500, alignment: .center)
                            Image("imagem2").resizable().frame(width: 270, height: 500, alignment: .center)
                            Image("imagem1").resizable().frame(width: 270, height: 500, alignment: .center)
                            Image("imagem2").resizable().frame(width: 270, height: 500, alignment: .center)
                        }
                        
                    }
                }
            }
        }
    }
}
