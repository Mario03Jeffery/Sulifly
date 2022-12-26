//
//  CartIM.swift
//  Sulifly
//
//  Created by Mario Ehiagwina on 2022-12-26.
//

import SwiftUI

struct CartIM: View {
    var cartnumber : Int
   
    var body: some View {
        ZStack(alignment: .topTrailing){
            Image(systemName: "cart")
                .padding(.top, 5)
          
            
            if cartnumber > 0{
                Text("\(cartnumber)")
                    .font(.caption)
                    .foregroundColor(Color.black)
                    .padding(5)
                    .background(.red)
                    .clipShape(Circle())
                    .offset(x: 10, y: -2)
            }
           
        }
    }
}

struct CartIM_Previews: PreviewProvider {
    static var previews: some View {
        CartIM(cartnumber: 1)
    }
}
