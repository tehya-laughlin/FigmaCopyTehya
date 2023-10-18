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
    
    var isExpanded: Bool = false
    
    var body: some View {
        
        ZStack {
            
            VStack{
                
                HStack{
                    
                    Text("Rec")
                        .padding(EdgeInsets(top: 5, leading: 7, bottom: 5, trailing: 7))
                        .background(Color("Tag1"))
                        .cornerRadius(5)
                    Text("Experience")
                        .padding(EdgeInsets(top: 5, leading: 7, bottom: 5, trailing: 7))
                        .background(Color("ToggleFGTag2"))
                        .cornerRadius(5)
                    Text("Class")
                        .padding(EdgeInsets(top: 5, leading: 7, bottom: 5, trailing: 7))
                        .background(Color("ToggleFGTag2"))
                        .cornerRadius(5)
                    Spacer()
                    
                    
                }
                .padding(EdgeInsets(top: 10, leading: 10, bottom: 0, trailing: 10))
                
                if !isExpanded{
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
                            Label("Reviews", systemImage: "bubble.left.and.bubble.right")
                                .labelStyle(.iconOnly)
                                .badge(2)
                                .scaleEffect(CGSize(width: 1.4, height: 1.4))
                                .padding(.trailing, 5)
                        }
                        .padding(.bottom, 5)
                        VStack(alignment: .leading){
                            Text("12 October 2023")
                                .font(.caption)
                                .frame(alignment: .leading)
                            Text("La Cuisine Paris: Dessert Cooking Class")
                                .font(.custom("CardTitle", size: 16).bold())
                                .fontWeight(.semibold)
                            Text("Learn to make your own croissants!! The centrally located La Cuisine Paris cooking school has a range of culinary courses in English...")
                                .font(.footnote)
                                
                        }
                        
                        
                    }
                    .padding()
                }
                .background(.thinMaterial)
                .background(Color("Card"))
                .cornerRadius(10)
                
                
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


