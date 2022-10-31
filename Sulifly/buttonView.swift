//
//  buttonView.swift
//  Sulifly
//
//  Created by Mario Ehiagwina on 2022-10-17.
//

import SwiftUI
import Firebase

struct buttonView: View {
    var body: some View {
        VStack{
            
            
            
            Button(action: {
                // sign
                
            }, label: {
                
                Text ("Sign in")
                    .padding (.top, 100.0)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    
                
                
            })
            .toolbar(){
                //try Auth.auth().sigout()
            }
           
            
            
            Button(action: {
                // get started
                
            }, label: {
                
                Text ("Get Started")
                    .padding(.bottom, 100.0)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
            })
            
        }
    }
}

struct buttonView_Previews: PreviewProvider {
    static var previews: some View {
        buttonView()
    }
}
