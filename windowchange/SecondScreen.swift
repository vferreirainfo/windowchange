//
//  SecondScreen.swift
//  windowchange
//
//  Created by Vitor on 26/08/2022.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        
            VStack{
                Image(systemName: "airplane")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(
                        width: 200,
                        height: 200,
                        alignment: .center)
                    .padding()
                
                
                
                Text("Second Screen")
                    .font(
                    .system(
                        size: 30,
                        weight: .light,
                        design: .default)
                )
                    .padding()
                
                VStack{
                    
                    Button(action: goHome, label: {
                        HStack{
                            Image(systemName: "bell")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(
                                    width: 50,
                                    height: 50,
                                    alignment: .center)
                                .padding()
                            Text("Alert me !!")
                                .frame(
                                    width: 200,
                                    height: 50,
                                    alignment: .center)
                                .foregroundColor(Color.red)
                                .cornerRadius(8)
                        }.border(Color.blue, width: 0.5)
                    })
                    
                    Button(action: goHome, label: {
                        HStack{
                            Image(systemName: "return")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(
                                    width: 50,
                                    height: 50,
                                    alignment: .center)
                                .padding()
                            Text("Back to home")
                                .frame(
                                    width: 200,
                                    height: 50,
                                    alignment: .center)
                                .foregroundColor(Color.red)
                                .cornerRadius(8)
                        }.border(Color.blue, width: 0.5)
                    })
                    
                    NavigationLink (
                        destination: Text("Swiss"),
                        label: {
                            HStack{
                                AsyncImage(url: URL(string: "https://i0.wp.com/i.pinimg.com/originals/a5/0c/66/a50c66fd3e50708507c5163d2b14a565.jpg?resize=650,400")) { image in
                                    image.resizable()
                                    
                                } placeholder: {
                                    ProgressView()
                                }
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                                .padding()
                                Text("SWISS")
                                    .frame(
                                        width: 200,
                                        height: 50,
                                        alignment: .center)
                                    .foregroundColor(Color.red)
                                    .cornerRadius(8)
                            }.border(Color.black, width: 0.5)
                            
                        }
                    )
                }
                
                
                
            }
            
            .navigationTitle("Home")
            
            
        }
    
    func goHome() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: ContentView())
            window.makeKeyAndVisible()
        }
    }
}

struct SecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
