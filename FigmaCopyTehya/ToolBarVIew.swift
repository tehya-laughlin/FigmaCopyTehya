//
//  PageToggleStyle.swift
//  FigmaCopyTehya
//
//  Created by Tehya Laughlin on 10/17/23.
//

import SwiftUI

struct ToolBarView: ToolbarContent {
    
    var size: CGSize
    @State var isToggled = false
    @State var side: Double = 0.0
    @State var side2: Double = 0.0
   
    var body: some ToolbarContent{
        
              
            ToolbarItem(placement: .navigationBarLeading){
                Image(systemName: "loupe")
                    .padding(.bottom, 20)
                    
            }
                
            ToolbarItem(placement:.principal){
                Button{
                    withAnimation(.spring){
                        isToggled.toggle()
                    }
                    side = size.width/4 + 12
                    side2 = side - 113
                } label: {
                    ZStack(alignment:.bottomLeading){
                        
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color("ToggleFGTag2"))
                            .frame(width: size.width*0.55*0.50)
                            .offset(x: isToggled ? side : side2)
            
                        
                        HStack{
                            
                            Text("Stay local")
                                .fontWeight(.bold)
                                .padding(EdgeInsets(top: 5, leading: 18, bottom: 5, trailing: 12))
                            Spacer()
                            
                            Text("Go Global")
                                .fontWeight(.bold)
                                .padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 15))
                                
                        }
                        
                    }
                    .frame(width: size.width*0.55)
                    .padding(EdgeInsets(top: 5, leading: 8, bottom: 5, trailing: 8))
                    .background(Color("ToggleBG"))
                    .cornerRadius(25)
                }
                .padding(.bottom, 20)
                
            }
                
        ToolbarItem(placement:.navigationBarTrailing){
                Image("person")
                .resizable()
                .clipShape(Circle())
                .frame(width:40, height:50)
                .padding(.bottom, 20)
            }
        

        
    }
    
}


