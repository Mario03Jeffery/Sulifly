//
//  Sulifly3View.swift
//  Sulifly
//
//  Created by Mario Ehiagwina on 2022-10-27.
//

import SwiftUI
import Firebase
struct Sulifly3View: View {
    @State var useremail = ""
    @State var userpassword = ""
    @State var userCreate = ""
    
    var ref: DatabaseReference! =
    Database.database().reference()
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text("Name")
                TextField("Name", text: $userCreate)
                    .fontWeight(.bold)
                    .frame(width: 200)
                    .cornerRadius(10.0
                                  
                    )
                    .padding()
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .padding(.trailing)
                
            }
            
            HStack {
                Spacer()
                Text("Email")
                TextField("Email", text: $useremail)
                    .fontWeight(.bold)
                    .frame(width: 200)
                    .cornerRadius(10.0
                                  
                    )
                    .padding()
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .padding(.trailing)
                
            }
            .keyboardType(.emailAddress)
            HStack {
                Spacer()
                Text("Password")
                SecureField("Password", text: $userpassword)
                    .fontWeight(.bold)
                    .frame(width: 200)
                    .cornerRadius(10.0
                                  
                    )
                    .padding()
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .padding(.trailing)
                
            }
            Button(action: {
                enteruser()
            }, label: {
                Text("Create account")
                    .fontWeight(.bold)
                
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                    .padding(.top, 100.0)
            })
            
            
            
        }
        
        
        
    }
    func enteruser(){
        Auth.auth().createUser(withEmail: useremail, password: userpassword) { authResult, error in
        }
        
        useremail = ""
        userpassword = ""
        
        
        func usercreate(){
            let userid = Auth.auth().currentUser!.uid
            ref.child("name").child(userid).setValue(usercreate)
        }
        struct Sulifly3View_Previews: PreviewProvider {
            static var previews: some View {
                Sulifly3View()
            }
            
            
            
        }
    }
}

