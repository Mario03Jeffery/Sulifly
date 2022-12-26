//
//  ShoppingpageView.swift
//  Sulifly
//
//  Created by Mario Ehiagwina on 2022-11-07.
//

import SwiftUI

struct ShoppingpageView: View {
    var body: some View {
        VStack{
            
            Text("SULIFLY")
                .frame(width:100.0, height: 100.0)
                .background(.brown)
            
            ZStack{
                
                Text("GUISEPPE LEVON")
                    .font(.largeTitle)
                
                    .fontWeight(.heavy)
                    .foregroundColor(Color.yellow)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                    .frame(maxWidth: .infinity, maxHeight: 200.0)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.black/*@END_MENU_TOKEN@*/)
                    .opacity(1.3)
                VStack{
                    
                    Text("Welcome")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(.top, 30.0)
                    
                    Text("SULIFLY COPENHAGEN")
                    
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(.all)
                    
                    NavigationLink(destination: {
                        ShoppingpageView()
                    }, label: {
                        Text("Shop all")
                            .font(.title2)
                            .foregroundColor(Color.white)
                            .cornerRadius(10)
                            .padding()
                            .border(Color.white, width: 1)
                    })
                    
                }
                
                
                
            }
            
            
        }
        
    }
    
}

struct ShoppingpageView_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingpageView()
    }
}

