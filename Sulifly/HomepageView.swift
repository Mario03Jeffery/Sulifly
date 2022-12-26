//
//  buttonView.swift
//  Sulifly
//
//  Created by Mario Ehiagwina on 2022-10-17.
//

import SwiftUI
import Firebase

struct HomepageView: View {
    var body: some View {
       
        NavigationView{
            
            ScrollView{
               
                    
                    VStack (spacing: 20) {
                        ZStack{
                            
                            Image("fashion")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 500, height: 500)
                                .opacity(0.8)
                                .padding()
                            VStack{
                                
                                Text("WELCOME")
                                    .font(.system(size: 56))
                                    .padding(.bottom)
                                    
                                Text("TO")
                                    .font(.system(size: 46))
                                    .frame(maxWidth: 300, alignment: .trailing)
                                    .padding()
                               
                                Text("Sulifly")
                                    .font(.system(size: 66))
                                    .frame(maxWidth: 300, alignment: .trailing)
                            }
                            
                           
                        }
                       
                        Text("See The World From a Different Angle")
                        ZStack{
                            Image ("Legal")
                                .resizable()
                                .scaledToFit()
                                .frame(maxWidth: .infinity, maxHeight: 500)

                            Text("VISION")
                                .font(.largeTitle)
                                .frame(maxWidth: 300, maxHeight: 400,
                                       alignment: .topTrailing)
                            
                            
                           NavigationLink(destination: {
                               VisionView(cartman: Cartmanager(), product: productlist[0])
                           }, label: {
                               Text("Buy Now")
                                   .font(.title)
                                   .foregroundColor(Color.black)
                                   .padding()
                                   .border(.black, width: 1)
                               
                           })
                            
                            
                        }
                        
                            
                        
                        Image("Woman")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 550, height: 550)
                        
                      
                        ZStack{
                            
                            Image("oluwa")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 350, height: 350)
                            Text("OLUWA")
                                .font(.largeTitle)
                                .frame(maxHeight: .infinity, alignment: .top)
                            
                            NavigationLink(destination: {
                                //buy now
                            }, label: {
                                Text("Buy Now")
                                    .font(.title)
                                    .padding()
                                    .border(.black, width: 1)
                                    .foregroundColor(Color.black)
                                    .frame(maxHeight: .infinity, alignment: .bottom)
                                
                            })
                       
                        }
                       
                    
                }
                
                
                
            }
           
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(hue: 0.573, saturation: 0.139, brightness: 0.958))
            
            
        }
        
       
        
        
    }
   
}

struct HomepageView_Previews: PreviewProvider {
    static var previews: some View {
        HomepageView()
    }
}
