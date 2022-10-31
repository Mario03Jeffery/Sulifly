//
//  StartView.swift
//  Sulifly
//
//  Created by Mario Ehiagwina on 2022-10-27.
//

import SwiftUI
import Firebase
struct StartView: View {
    var ref: DatabaseReference! =
    Database.database().reference()
    var body: some View {
        
        VStack{
            
            Button(action: {
                try! Auth.auth().signOut()
            }, label: {
                Text ("Log out")
                    .frame(width: 300, height: 300)
                
            })
            
            
            
        }
            
            
            
        }
        
    }
    
    struct StartView_Previews: PreviewProvider {
        static var previews: some View {
            StartView()
        }
    }

