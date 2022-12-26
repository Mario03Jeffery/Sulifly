//
//  CartbigView.swift
//  Sulifly
//
//  Created by Mario Ehiagwina on 2022-12-01.
//

import SwiftUI
import CoreData
struct CartbigView: View {
    
    @Environment(\.managedObjectContext) private var viewContext
    
    var product : products
    @StateObject var cartmanager = Cartmanager()
    
    @State var cartman : Cartmanager
    
    @State var number : Int
    @State var plus = "+"
    @State var minus = "-"
    
    
    
    var body: some View {
        VStack{
            
            
            Image(product.image)
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: 1000)
                .padding()
            
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
                Text("add cart")
                    .foregroundColor(Color.black)
                    .padding()
                    .border(.black, width: 1)
                
            })
            .toolbar{
                NavigationLink(destination: {
                    CartView( product: productlist[1])
                        .environmentObject(Cartmanager())
                }, label: {
                    CartIM(cartnumber: cartmanager.Products.count)
                        .foregroundColor(Color.black)
                                            
                    
                })
            }.onAppear() {
                cartman.loadcart(viewContext: viewContext)
                
                
                
            }
            .padding()
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

struct CartbigView_Previews: PreviewProvider {
    static var previews: some View {
        CartbigView(product: productlist[0], cartman: Cartmanager(),  number: 1)
            .environmentObject(Cartmanager())
    }
}
