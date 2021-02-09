//
//  Home.swift
//  InstagramViewLayout
//
//  Created by Maxim Macari on 8/2/21.
//

import SwiftUI

struct Home: View {
   
    @State var selectedTab = "house.fill"
    
    @Environment(\.colorScheme) var scheme
    
    @Binding var offset: CGFloat
    
    var body: some View {
        TabView(selection: $selectedTab){
         
            FeedView(offset: $offset)
                .padding(.top, edges?.top)
                .tag("home.fill")
            
            Text("Search")
                .tag("magnifyingglass")
            
            Text("Reels")
                .tag("airplayvideo")
            
            Text("Liked")
                .tag("suit.heart.fill")
            
            Text("Account")
                .tag("home.fill")
            
            Text("Home")
                .tag("person.circle")
            
        }
        .overlay(
            //Custom tab bar...
            VStack(spacing: 12){
                Divider()
                    .padding(.horizontal, -15)
                
                HStack(spacing: 0){
                    
                    TabBarButton(image: "house.fill", selectedTab: $selectedTab)
                        .frame(maxWidth: .infinity)
                    
                    TabBarButton(image: "magnifyingglass", selectedTab: $selectedTab)
                        .frame(maxWidth: .infinity)
                    
                    
                    TabBarButton(image: "airplayvideo", selectedTab: $selectedTab)
                        .frame(maxWidth: .infinity)
                    
                    
                    TabBarButton(image: "suit.heart.fill", selectedTab: $selectedTab)
                        .frame(maxWidth: .infinity)
                    
                    
                    TabBarButton(image: "person.circle", selectedTab: $selectedTab)
                        .frame(maxWidth: .infinity)
                    
                }
            }
            .padding(.bottom, 10) // Default
            .padding(.bottom, edges?.bottom ?? 15)
            .padding(.horizontal, 15)
            .background(scheme == .dark ? Color.black : Color.white)
            
            , alignment: .bottom
        )
        .ignoresSafeArea()
    }
}

//tab bar button
struct TabBarButton: View {
    
    var image: String
    @Binding var selectedTab: String
    
    
    var body: some View{
        Button(action: {
            selectedTab = image
        }, label: {
            Image(systemName: image)
                .font(.title2)
                .foregroundColor(selectedTab == image ? .primary : .gray)
        })
    }
}
