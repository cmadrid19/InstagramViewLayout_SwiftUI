//
//  MainView.swift
//  InstagramViewLayout
//
//  Created by Maxim Macari on 8/2/21.
//

import SwiftUI



struct MainView: View {
    
    @State var offset: CGFloat = rect.width
    
    
    var body: some View {
        //Scrollable tabs
        
        GeometryReader { geo in
            
            let frame = geo.frame(in: .global)
            
            //Since theere are three views
            ScrollableTabBar(tabs: ["","",""], rect: frame, offset: $offset) {
                
                PostView(offset: $offset)
                
                Home(offset: $offset)
                
                DirectView(offset: $offset)
                
            }
            .ignoresSafeArea()
            
        }
        .ignoresSafeArea()
    }
}



struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
