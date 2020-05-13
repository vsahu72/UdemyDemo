//
//  TabViewContainer.swift
//  HomeJini
//
//  Created by Divya on 17/03/20.
//  Copyright © 2020 Torry Harris. All rights reserved.
//

import SwiftUI

struct TabViewContainer: View {
   
    
    init() {
       
        UITabBar.appearance().barTintColor = UIColor.white
        UITabBar.appearance().backgroundColor = UIColor.blue
    }
    
    
    var body: some View {
        TabView{
            FeaturedView()
                .tabItem {
                    Image(systemName: "star")
                    Text("Featured")
            }
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
            }
            
            MyCourseView()
                .tabItem {
                    Image(systemName: "play.circle")
                    Text("My Course")
            }
            
            WishlistView()
                .tabItem {
                    Image(systemName: "heart")
                    Text("Wishlist")
            }
            
            AccountView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Account")
            }
        }.edgesIgnoringSafeArea(.top)
        
        
    }
}

struct TabViewContainer_Previews: PreviewProvider {
    static var previews: some View {
        TabViewContainer()
    }
}
