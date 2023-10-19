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
                    CardView2(size: size)
                        .padding(EdgeInsets(top: 5, leading: 10, bottom: 0, trailing: 10))
                        
                }.padding(EdgeInsets(top: 15, leading: 40, bottom: 0, trailing: 40))
                
            }
            .background(Color("BG"))
            .padding(EdgeInsets(top: 1, leading: 0, bottom: 0, trailing: 0))
                  
            .toolbar {
                ToolBarView(size:size)
            }
            .toolbarBackground(Color.white)
            .navigationBarTitleDisplayMode(.inline)
            
        }
        
        
    }
}

#Preview {
    ContentView()
}
