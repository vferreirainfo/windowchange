//
//  ContentView.swift
//  windowchange
//
//  Created by Vitor on 26/08/2022.
//


//Software development
//Objective-C and Swift learning

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            VStack{
                Image(systemName: "house")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(
                        width: 200,
                        height: 200,
                        alignment: .center)
                    .padding()
                
                Text("First Screen")
                    .font(
                    .system(
                        size: 30,
                        weight: .light,
                        design: .default)
                )
                    .padding()
                
                NavigationLink (
                    destination: SecondView(),
                    label: {
                        Text("Continue")
                            .frame(
                                width: 200,
                                height: 100,
                                alignment: .center)
                            .background(Color.blue)
                            .foregroundColor(Color.white)
                            .cornerRadius(8)
                        
                    }
                )
                
            }
            
            .navigationTitle("Home")
            
            
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
