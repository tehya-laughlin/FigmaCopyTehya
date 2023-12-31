//
//  CardView.swift
//  FigmaCopyTehya
//
//  Created by Tehya Laughlin on 10/17/23.
//

import SwiftUI

struct CardView: View {
    var size: CGSize
    @State private var isFavorited = UserDefaults.standard.bool(forKey: "favorite")
    
    @State var isExpanded: Bool = false
    
    var body: some View {
        
        ZStack {
            
            VStack{
                
                HStack{
                    
                    Text("Rec")
                        .padding(EdgeInsets(top: 5, leading: 9, bottom: 5, trailing: 9))
                        .background(Color("Tag1"))
                        .cornerRadius(10)
                        .fontWeight(.semibold)
                    Text("Experience")
                        .padding(EdgeInsets(top: 5, leading: 9, bottom: 5, trailing: 9))
                        .background(Color("ToggleFGTag2"))
                        .cornerRadius(10)
                        .fontWeight(.semibold)
                    Text("Class")
                        .padding(EdgeInsets(top: 5, leading: 9, bottom: 5, trailing: 9))
                        .background(Color("ToggleFGTag2"))
                        .cornerRadius(10)
                        .fontWeight(.semibold)
                    Spacer()
                    
                    
                }
                .padding(EdgeInsets(top: 10, leading: 3, bottom: 0, trailing: 0))
                
                if(!isExpanded){
                    Spacer()
                }
                
                ZStack{
                    VStack{
                        HStack{
                            Image("person")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width:25, height:35)
                            Text("Jane Doe")
                                .font(.caption)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Spacer()
                            Button {
                                isFavorited.toggle()
                                UserDefaults.standard.set(self.isFavorited, forKey: "favorite")
                            } label: {
                                Label("Favorite", systemImage: isFavorited ? "heart" : "heart.fill")
                                    .scaleEffect(CGSize(width: 1.4, height: 1.4))
                                    .padding(.trailing, 5)
                                    .labelStyle(.iconOnly)
                                    .contentTransition(.symbolEffect(.replace.offUp))
                            }
                            Image(systemName: "pin")
                                .scaleEffect(CGSize(width: 1.4, height: 1.4))
                                .padding(.trailing, 5)
                            Image(systemName: "bubble.left.and.bubble.right")
                                .scaleEffect(CGSize(width: 1.4, height: 1.4))
                            Text("2")
                                
                        }
                        .padding(.bottom, 4)
                        VStack(alignment: .leading){
                            Text("12 October 2023")
                                .font(.caption2)
                                .padding(.bottom, 2)
                                .frame(alignment: .leading)
                            Text("La Cuisine Paris: Dessert Cooking Class")
                                .fontWeight(.medium)
                                .font(Font.system(size:16, design: .default))
                            Text("Learn to make your own croissants!! The centrally located La Cuisine Paris cooking school has a range of culinary courses in English...")
                                .font(.footnote)
                                .lineSpacing(2.0)
                                
                        }
                        
                        if(isExpanded){
                            Spacer()
                        }
                    }
                    .padding()
                    
                }
                .background(.thickMaterial, in: RoundedRectangle(cornerRadius: 8))
                .onTapGesture {
                    withAnimation {
                        isExpanded.toggle()
                    }
                }
                
                
                
            }
            .padding(EdgeInsets(top: 0, leading: 10, bottom: 10, trailing: 10))
            
        }
        .background{
            Image("croissant")
                .resizable()
                .scaledToFill()
        }
        .frame(width: size.width*9/10, height: 560)
        .cornerRadius(20)
        
        

        
    }
}


