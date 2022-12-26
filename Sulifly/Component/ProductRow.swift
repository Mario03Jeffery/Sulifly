//
//  ProductRow.swift
//  Sulifly
//
//  Created by Mario Ehiagwina on 2022-12-11.
//

import SwiftUI
import CoreData
struct ProductRow: View {
    @EnvironmentObject var cartmanager: Cartmanager
    @Environment(\.managedObjectContext) private var viewContext
    var product : products
    var body: some View {
       
            HStack(spacing: 20){
                Image(product.image)
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame(width: 70)
                    .cornerRadius(10)
                VStack(alignment: .leading, spacing: 10) {
                    Text(product.name)
                        .bold()
                    Text("kr\(product.price)")
                }
                
                Spacer()
          
            Image(systemName: "trash")
                .foregroundColor(.black)
                .onTapGesture {
                    cartmanager.removeCart(viewContext: viewContext, product: productlist[0], amount: 1)
                }
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: productlist[0])
            .environmentObject(Cartmanager())
    }
}
