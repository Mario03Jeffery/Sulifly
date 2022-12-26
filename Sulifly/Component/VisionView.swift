//
//  VisionView.swift
//  Sulifly
//
//  Created by Mario Ehiagwina on 2022-11-21.
//

import SwiftUI
import CoreData

struct VisionView: View {
    @Environment(\.managedObjectContext) private var viewContext
   
    @State var cartman : Cartmanager
    
    var product : products
    
    @StateObject var cartmanager = Cartmanager()
    @State var image : String = ""

    @State var number = 1
    @State var plus = "+"
    @State var minus = "-"
    
   
    var body: some View {
        
        VStack{
            
            
            Image("Legal")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: 500)
            
            Text("SULIFLY COPENGAHEN")
                .font(.caption)
                .frame(maxWidth: .infinity,    alignment: .leading)
                .padding(.leading)
            Text("\(product.name)")
                .font(.title)
                .frame(maxWidth: .infinity,    alignment: .leading)
                .padding(.leading)
            
            HStack{
                Text("\(product.price)Kr")
                    .frame(maxWidth: .infinity,    alignment: .leading)
                    .padding()
                Text("Inkl.tax")
                    .frame(maxWidth: .infinity,    alignment: .leading)
                    .padding(.trailing)
            }
            Text("Quantity")
                .frame(maxWidth: .infinity,    alignment: .leading)
                .padding(.leading)
            
            HStack{
                
                Button(action: {Minus()}, label: {Text("\(minus)")
                        .foregroundColor(.black)
                        .padding()
                })
                Text("\(number)")
                    .padding()
                
                Button(action: {Plus()}, label: {Text("\(plus)")
                        .foregroundColor(.black)
                        .padding()
                })
                
            }
            .border(.black, width: 1)
            .frame(maxWidth: .infinity,    alignment: .leading)
            .padding(.leading)
            
            Button(action: {
               
                cartman.addToCart(viewContext: viewContext, product: product, amount: 1)
                
                if number > 1 {
                    cartman.addToCart(viewContext: viewContext, product: product, amount: 1)
                }
                
            }, label: {
                Text("Add to cart")
                    .font(.body)
                    .foregroundColor(Color.black)
                    .padding()
                    .border(.black, width: 1)
            })
            
           .onAppear(){
                cartmanager.loadcart(viewContext: viewContext)
               // loadData()
            }
           .toolbar{
            
               NavigationLink(destination: {
                   CartView(product: productlist[0])
                       .environmentObject(Cartmanager())
               }, label: {
                   CartIM(cartnumber: cartmanager.Products.count)
                       .foregroundColor(.black)
                   
                   
                   
               })
               
              
           }
         
        }.onAppear() {
            cartmanager.loadcart(viewContext: viewContext)
            
        }
        
    }
    func Plus(){
        if (number == number){
          number += 1
        }
        
    }
    func Minus(){
        if (number != number){
            number = 1
        }
        else {
            number = 1
        }
    }
    
}

struct VisionView_Previews: PreviewProvider {
    static var previews: some View {
        VisionView(cartman: Cartmanager(), product: productlist[0])
            .environmentObject(Cartmanager())
    }
}
