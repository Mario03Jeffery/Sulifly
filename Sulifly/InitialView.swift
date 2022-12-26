//
//  InitialView.swift
//  Sulifly
//
//  Created by Mario Ehiagwina on 2022-11-03.
//

import SwiftUI
import Firebase
struct InitialView: View {
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
        
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(hue: 0.573, saturation: 0.139, brightness: 0.958))
        
    }
}

struct InitialView_Previews: PreviewProvider {
    static var previews: some View {
        InitialView()
    }
}
