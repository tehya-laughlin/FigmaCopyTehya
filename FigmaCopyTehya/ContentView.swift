//
//  ContentView.swift
//  FigmaCopyTehya
//
//  Created by Tehya Laughlin on 10/17/23.
//

import SwiftUI

struct ContentView: View {
    
    
    
    var body: some View {
        GeometryReader { geometry in
            
            TabView {
                
                Group {
                    HomeView(size: geometry.size).tabItem{ Label("", systemImage: "house.fill")
                    }
                    
                    HomeView(size: geometry.size).tabItem{ Label("", systemImage: "plus.circle.fill")
                    }
                    
                    
                    HomeView(size: geometry.size).tabItem{ Label("", systemImage: "suitcase.fill")
                    }
                }
                .toolbarBackground(.visible, for: .tabBar)
                
            }
            .shadow(radius: 10)
            .foregroundColor(Color("TextIcons"))
            .accentColor(Color("TextIcons"))
            
        
        
        }
        
    }
}

#Preview {
    ContentView()
}
