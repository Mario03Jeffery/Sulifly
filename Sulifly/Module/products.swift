//
//  products.swift
//  Sulifly
//
//  Created by Mario Ehiagwina on 2022-11-24.
//

import Foundation
struct products: Identifiable {
    var id = UUID()
    var name : String
    var image : String
    var price : Int
}

var productlist = [products(name: "04'S Gold", image: "sulifly 1", price: 219),
                  products(name: "AVANCHE", image: "sulifly 2", price: 149),
                  products(name: "AKHI", image: "sulifly 3", price: 199),
                  products(name: "AMMOND GOLD", image: "sulifly 4", price: 299),
                  products(name: "ATTENTION VIER", image: "sulifly 5", price: 399),
                  products(name: "BYERS", image: "sulifly 6", price: 394),
                  products(name: "C.L.O.U.T", image: "sulifly 7", price: 199),
                  products(name: "CENAS", image: "sulifly 8", price: 250),
                  products(name: "COLLECTION CLASSY", image: "sulifly 9", price: 349),
                  products(name: "EBBA", image: "sulifly 10", price: 249),
                  products(name: "COLLECTION 25", image: "sulifly 11", price: 499),
                  products(name: "COLLECTION 29", image: "sulifly 12", price: 299)]
