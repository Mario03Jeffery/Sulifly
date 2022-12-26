//
//  TabView.swift
//  Sulifly
//
//  Created by Mario Ehiagwina on 2022-11-03.
//

import SwiftUI

struct TabView2: View {
    //@Binding var account2 : InitialView
    var body: some View {
        
        TabView {
            InitialView()
                .tabItem {
                    Label("Account", systemImage: "person.circle")
                }
            HomepageView()
                .tabItem {
                    Label("Home", systemImage: "house.circle.fill")
                }
            SwiftUIView()
                .tabItem {
                    Label("shop", systemImage: "magnifyingglass.circle.fill")
                }
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabView2()
    }
}
