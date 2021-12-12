//
//  ContentView.swift
//  TwitterClone
//
//  Created by Elliot knight on 10/12/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            TweetsView()
                .tabItem {
                Label("Tweets", systemImage: "house.fill")
                }
            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                    
                }
            NotificationView()
                .tabItem {
                    Label("Notifications", systemImage: "bell")
                }
            PrivateMessageView()
                .tabItem {
                    Label("Messsage", systemImage: "envelope")
                    
                }
        }.labelStyle(.iconOnly)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
