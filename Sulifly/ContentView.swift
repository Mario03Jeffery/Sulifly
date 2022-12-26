//
//  ContentView.swift
//  Sulifly
//
//  Created by Mario Ehiagwina on 2022-10-16.
//

import SwiftUI
import Firebase

struct ContentView: View {
    
    @State var isloggedin = false
    @State var some = ""
    
    var body: some View {
        
        VStack {
            if(isloggedin)
            {
                TabView2()
            } else {
                LoginView()
            }
            
        
            
        }.onAppear() {
            var handle = Auth.auth().addStateDidChangeListener { auth, user in
                
                if(Auth.auth().currentUser == nil)
                {
                    isloggedin = false
                } else {
                    isloggedin = true
                }
            }
        }
        
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
