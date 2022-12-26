//
//  Sulifly2View.swift
//  Sulifly
//
//  Created by Mario Ehiagwina on 2022-10-17.
//

import SwiftUI
import Firebase
struct Sulifly2View: View {
    @State var email = ""
    @State var password = ""
    @State private var showAlerting = false
    
    var ref: DatabaseReference! =
    Database.database().reference()
  
    
    var body: some View {
      
        ZStack{
            
            Image("GlassesImage")
                .resizable()
                .scaledToFill()
                .opacity(1.40)
                .ignoresSafeArea()
            
            
          
            
            VStack {
                
                Spacer()
                
                HStack {
                    Spacer()
                  
                    TextField("Email", text: $email)
                        .fontWeight(.bold)
                        .frame(width: 200)
                        .cornerRadius(10.0
                                      
                        )
                        .padding()
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        .padding(.trailing)
                    
                }
                
                .keyboardType(.emailAddress)
                HStack {
                    Spacer()
                    SecureField("Pasword", text: $password)
                    
                        .fontWeight(.bold)
                        .frame(width: 200)
                        .cornerRadius(10.0)
                        .padding()
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        .padding(.trailing)
                    
                }
                 
                Spacer()
                
                Button(action: {
                    enteruser()
                }, label: {
                    Text("Let's go!!")
                        .fontWeight(.bold)
                    
                        .foregroundColor(Color.blue)
                        .multilineTextAlignment(.center)
                        .padding(.top, 100.0)
                })
                
                .alert("Oops Wrong Email", isPresented: $showAlerting) {
                    Button("OK", role: .cancel) { }
                }
                
            }
            
        }
            
            
            
            
            
            .onAppear(){
                var  handle = Auth.auth().addStateDidChangeListener { auth, user in
                    
                }
                
                
            
            
            
            
            
            
            
            
        }
        
    }
    func enteruser(){
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            if (error != nil){
                //misslyckad inlogning
                showAlerting = true
            }
            
            email = ""
            password = ""
        }
    }
    struct Sulifly2View_Previews: PreviewProvider {
        static var previews: some View {
            Sulifly2View()
        }
    }
    
}

