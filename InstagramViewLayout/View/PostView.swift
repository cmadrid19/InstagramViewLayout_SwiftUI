//
//  PostView.swift
//  InstagramViewLayout
//
//  Created by Maxim Macari on 8/2/21.
//

import SwiftUI

struct PostView: View {
    
    @Binding var offset: CGFloat
    
    var body: some View {
        
        ZStack{
            //Camera view
            Color.black
                .frame(maxWidth: .infinity, alignment: .leading)
            
            CameraView(offset: $offset)
            
            VStack{
                HStack {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "gear")
                            .font(.title)
                    })
                    
                    Spacer()
                    
                    Button(action: {
                        offset = rect.width
                    }, label: {
                        Image(systemName: "xmark")
                            .font(.title)
                    })
                    
                }
                .foregroundColor(.white)
                .padding()
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "photo")
                        .font(.title)
                })
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            }
            .padding(.top, edges?.top ?? 15)
            .padding(.bottom, edges?.bottom)
            
        }
        
        
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
