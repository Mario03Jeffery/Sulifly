//
//  CartView.swift
//  Sulifly
//
//  Created by Mario Ehiagwina on 2022-11-28.
//

import SwiftUI
import CoreData
struct CartView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @StateObject var cartmanager = Cartmanager()
 
    var product : products
    
  var body: some View {
         
       ScrollView{
          
           if productlist.count > 0  {
                ForEach(cartmanager.Products, id: \.id){
                 products in
                    ProductRow(product: products)
                }
                
                
                
                
                HStack{
                    Text("Your cart total is")
                    Spacer()
                    Text("kr\(cartmanager.total).00")
                        .bold()
                }
               
            }else {
                Text("Empty")
            }
            
           
          
         
                
        }.onAppear() {
            cartmanager.loadcart(viewContext: viewContext)
            
        }
        .navigationTitle("Cart")
        .padding()
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView(product: productlist[0])
            .environmentObject(Cartmanager())
    }
}
