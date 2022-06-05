//
//  ContentView.swift
//  MojiMoku
//
//  Created by Vanness Anthony on 04/06/22.
//

import SwiftUI
    
struct ContentView: View {
    @State private var selection: Tab = .explore
    
    enum Tab{
        case explore
        case list
    }
    var body: some View {
        TabView(selection: $selection){
            CategoryHome()
            .tabItem{
                Label("Home",systemImage:  "house")
            }.tag(Tab.explore)
            AnimeList()
                .tabItem{
                    Label("List", systemImage:"list.bullet")
                }.tag(Tab.list)
            
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}
