//
//  Cartmanager.swift
//  Sulifly
//
//  Created by Mario Ehiagwina on 2022-11-28.
//

import Foundation
import SwiftUI
import CoreData

class Cartmanager : ObservableObject {
        
    let id = UUID()
    
    @Published private(set) var Products:[products] = []
    @Published private(set) var total: Int = 0
    
    @Published private(set) var cartitems = [Cart]()
        
    func loadcart(viewContext : NSManagedObjectContext) {
        
        let fetch = Cart.fetchRequest()
        
        do {
         
            cartitems = try viewContext.fetch(fetch)
          

            var tempsum = 0
            for cartloop in cartitems {
                for prod in productlist {
                    if(cartloop.cartshop == prod.name)
                    {
                        tempsum = tempsum + Int(cartloop.cartamount) * prod.price
                    }
                }
            }
            total = tempsum
        } catch {
            // added
        }
         
    }
    
    func addToCart(viewContext : NSManagedObjectContext, product: products, amount : Int){
       Products.append(product)
        total += product.price
        
        let newItem = Cart(context: viewContext)
        newItem.cartshop = product.name
        newItem.cartamount = Int64(amount)
        
        do {
            try viewContext.save()
            
            loadcart(viewContext: viewContext)
        } catch {
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
    }
    func removeCart(viewContext : NSManagedObjectContext, product: products, amount : Int)
    {
        Products = Products.filter{ $0.id != product.id }
        total -= product.price
        
        let newItem = Cart(context: viewContext)
        newItem.cartshop = product.name
        newItem.cartamount = Int64(amount)
        
        do {
            try viewContext.save()
            
            loadcart(viewContext: viewContext)
        } catch {
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
       }
        Products = Products.filter{ $0.id != product.id }
        total -= product.price
    }
   
}

