//
//  productscartView.swift
//  Sulifly
//
//  Created by Mario Ehiagwina on 2022-11-24.
//

import SwiftUI
import CoreData
struct productscartView: View {
    @StateObject var cartmanager = Cartmanager()
    @Environment(\.managedObjectContext) private var viewContext

    
    @State var cartman : Cartmanager
    
    var product : products
    
    var body: some View {
        VStack{
            
            
            
            
            
             ZStack(alignment: .bottom){
             
             NavigationLink(destination: {
             CartbigView(product: productlist[0],
             cartman: Cartmanager(), number: 1)
             
             }, label: {
             Image(product.image)
             .resizable()
             .cornerRadius(20)
             .frame(width: 150)
             .scaledToFit()
             })
             
             }
             
             
             
             
             Text("\(product.name)")
             .font(.headline)
             .fontWeight(.bold)
             Text("\(product.price)kr")
             .font(.caption)
             .fontWeight(.bold)
             
             Button(action: {
             cartman.addToCart(viewContext: viewContext, product: product, amount: 1)
             }, label: {
             Text("add cart")
             .foregroundColor(Color.black)
             .padding()
             .border(.black, width: 1)
             
             })
             }
             .frame(width: 100, height: 300)
            
            
        }
        
    }
    
        


struct productscartView_Previews: PreviewProvider {
    static var previews: some View {
        productscartView(cartman: Cartmanager(), product: productlist[0])
            .environmentObject(Cartmanager())
    }
}
