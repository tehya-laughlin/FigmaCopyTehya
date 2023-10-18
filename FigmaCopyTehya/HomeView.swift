//
//  ContentView.swift
//  FigmaCopyTehya
//
//  Created by Tehya Laughlin on 10/17/23.
//

import SwiftUI

struct HomeView: View {
    @State var isToggled: Bool = false;
    var size: CGSize
    
    var body: some View {
        
        
        NavigationStack {
            
            ScrollView {
                VStack{
                    CardView(size: size)
                        .padding(EdgeInsets(top: 5, leading: 10, bottom: 0, trailing: 10))
                    CardView(size: size)
                        .padding(EdgeInsets(top: 5, leading: 10, bottom: 0, trailing: 10))
                        
                }.padding(.top, 20)
                
            }
            .background(Color("AccentColor"))
            .padding(EdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 40))
                  
            .toolbar {
                ToolBarView(size:size)
            
            }
            .toolbarBackground(.visible)
                   
                   
        }
                   
        
    }
}

#Preview {
    ContentView()
}
