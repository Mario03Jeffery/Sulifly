//
//  delete and save.swift
//  Sulifly
//
//  Created by Mario Ehiagwina on 2022-10-27.
//

import Foundation
import Firebase



func delete(){
    var ref: DatabaseReference! =
    Database.database().reference()
    
    var userid = Auth.auth().currentUser!.uid
   
    ref.child("name").child(userid).removeValue()
}
