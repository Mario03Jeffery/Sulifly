//
//  SwiftUIView.swift
//  Sulifly
//
//  Created by Mario Ehiagwina on 2022-11-24.
//

import SwiftUI
import CoreData
struct SwiftUIView: View {
    
    @Environment(\.managedObjectContext) private var viewContext
    
    @StateObject var cartmanager = Cartmanager()
    
    var colomns = [GridItem(.adaptive(minimum: 170), spacing: 20)]
    
    
    //@StateObject private var manager: DataManager = DataManager()
    
    var body: some View {
        
        NavigationView{
            ScrollView{
                LazyVGrid(columns: colomns, spacing: 20){
                    ForEach (productlist, id: \.id ){ products in
                        productscartView(cartman: cartmanager, product: products)
                            .environmentObject(Cartmanager())
                    }
                    
                }
                
            }
            
            .toolbar{
                NavigationLink(destination: {
                    CartView(product: productlist[0])
                        .environmentObject(Cartmanager())
                }, label: {
                    CartIM(cartnumber: cartmanager.Products.count)
                        .foregroundColor(Color.black)
                    
                    
                })
            }
            
        }
        .onAppear() {
            cartmanager.loadcart(viewContext: viewContext)
            
        }
        
            
            
            
            
        .padding()
    }
    
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
