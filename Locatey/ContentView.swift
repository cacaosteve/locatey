//
//  ContentView.swift
//  Locatey
//
//  Created by steve on 10/23/20.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        TabView {
            LoginView()
                .tabItem {
                    Image(systemName: "lock.open.fill")
                    Text("Login")
                }
            
            LoginView()
                .tabItem {
                    Image(systemName: "map.fill")
                    Text("Maps")
                }
            
            LoginView()
                .tabItem {
                    Image(systemName: "list.bullet.rectangle")
                    Text("People")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
