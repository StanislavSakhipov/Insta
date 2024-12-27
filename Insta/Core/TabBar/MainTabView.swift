//
//  MainTabView.swift
//  Insta
//
//  Created by Stanislav Sakhipov on 12/26/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            Text("Main")
                .tabItem {
                    Image(systemName: "house")
                }
            Text("Search")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            Text("Upload Post")
                .tabItem {
                    Image(systemName: "plus.square")
                }
            Text("Notifications")
                .tabItem {
                    Image(systemName: "heart")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                }
        }
        .accentColor(.black)
    }
}

#Preview {
    MainTabView()
}
