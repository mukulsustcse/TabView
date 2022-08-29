//
//  ContentView.swift
//  TabView
//
//  Created by M. A. Alim Mukul on 29.08.22.
//

import SwiftUI

struct ContentView: View {
    
    @State var tabIndex = 1
    
    var body: some View {
        
        
        
        TabView(selection: $tabIndex) {
            Text("This is tab 1")
                .tabItem {
                    
                    VStack {
                        Image(systemName: "pencil")
                        Text("Tab 1")
                    }
                }
                .tag(1)
            
            VStack {
                Text("Hello")
                Text("This is tab 2")
                
            }
            .tabItem {
                Image(systemName: "star")
                Text("Tab 2")
            }
            .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
