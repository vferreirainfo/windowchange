//
//  SwiftUIAlert.swift
//  windowchange
//
//  Created by Vitor on 27/08/2022.
//

import SwiftUI

struct SwiftUIAlert: View {
    
    @State private var alertIsPresented = false
    
    
    var body: some View {
        
        
     
        NavigationView{
            VStack{
                //First One
                Button(action: {
                    //Show alert
                    self.alertIsPresented = true
                }, label:{
                    Text("TAP ME to alert!")
                        .foregroundColor(Color.white)
                        .bold()
                        .font(.system(size: 24))
                })
                .frame(
                    width:200,
                    height:50,
                    alignment:.center)
                .padding()
                .background(Color.orange)
                .cornerRadius(8)
                .alert(isPresented: $alertIsPresented, content: {
                    Alert(title:
                        Text("Atenção que estou na minha praia ..."),
                     message:
                            
                            Text ("AMO-TE "),
                          dismissButton: .default(Text("Got it!")))
                          })
                
                //Second one
                Button(action: {
                    
                }, label:{
                    Text("TAP ME to alert!")
                        .foregroundColor(Color.white)
                        .bold()
                        .font(.system(size: 24))
                })
                .frame(
                    width:200,
                    height:50,
                    alignment:.center)
                .padding()
                .background(Color.orange)
                .cornerRadius(8)
                .alert(isPresented: $alertIsPresented, content: {
                    Alert(title:
                        Text("Atenção que estou na minha praia ..."),
                     message:
                            
                            Text ("AMO-TE "),
                          dismissButton: .default(Text("Got it!")))
                          })
                
            }
            
            
            
            .navigationTitle("Swift UI alerts")
            
            
        }
        
       
    }
    
}


struct SwiftUIAlert_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIAlert()
    }
}


class ViewController: UIViewController {

    @IBAction func showAlertButtonTapped(_ sender: UIButton) {

        // create the alert
        let alert = UIAlertController(title: "My Title", message: "This is my message.", preferredStyle: UIAlertController.Style.alert)

        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
}

