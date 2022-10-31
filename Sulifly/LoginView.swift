//
//  LoginView.swift
//  Sulifly
//
//  Created by Mario Ehiagwina on 2022-10-25.
//

import SwiftUI
import Firebase
struct LoginView: View {
    var body: some View {
        
        NavigationView(content: {
            
            VStack {
                Text("SULIFLY")
                    .padding(.top, 100.0)
                    .font(.largeTitle)
                    .underline()
                    .shadow(color: .black, radius: 10, x: 5, y: 6)
                    .rotation3DEffect(.degrees(35), axis: (x: 1, y: 0, z: 0))
                
                
                Text("COPENHAGEN")
                    .font(.largeTitle)
                    .underline()
                    .shadow(color: .blue, radius: 5, x: 0, y: 5)
                    .rotation3DEffect(.degrees(35), axis: (x: 1, y: 0, z: 0))
                
                
                Text("see the world from a different angle")
                    .padding()
                
                
                
                NavigationLink(destination: {Sulifly2View()}, label: {
                    Text("Sign in")
                    
                        .padding(.top, 100.0)
                        .frame(width: 100.0, height: 100)
                    
                    
                })
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                NavigationLink(destination: {
                    Sulifly3View()
                }, label: {
                    Text("Get Started")
                    
                    
                    
                    
                })
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .onAppear()
                
            }
        })
        
        
    }
    
}






struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}


