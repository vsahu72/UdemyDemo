//
//  FeaturedProductCellView.swift
//  UdemyDemo
//
//  Created by vikash sahu on 12/05/20.
//  Copyright © 2020 Torry Harris Integrate Solutions. All rights reserved.
//

import SwiftUI

struct FeaturedProductCellView: View {
    let card: Card
    @State private var modifierActive = true
    var body: some View {
        VStack() {
            
            Image("bg img")
                .resizable()
                .frame(maxWidth:.infinity , maxHeight: 150, alignment:.leading)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            VStack(alignment: .leading,spacing : 10){
                
                    Text("Complete Pythone Bootcamp: Go from zero to hero in pyhone 3")
                                       .lineLimit(3)
                                 .multilineTextAlignment(.leading)
                                       .foregroundColor(.black)
                                       .font(.body)
                   
                
               
                
                
                
                Text("Joses Portilla")
                    .foregroundColor(Color("subtitile_color"))
                
                HStack(){
                    
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .foregroundColor(.gray)
                    
                    
                    Text("4.5").foregroundColor(Color("subtitile_color_dark"))
                    Text("(272737)").foregroundColor(Color("subtitile_color"))
                    
                }
                HStack{
                    Text("\u{20B9}"+"399.00")
                    Text("\u{20B9}"+"$399.00").strikethrough(modifierActive, color:.gray).foregroundColor(Color("subtitile_color"))
                }
                
                
                HStack() {
                    Text("Bestseller")
                }.frame(width: 70, height: 0, alignment: .center)
                    .font(.subheadline).padding()
                    .background(RoundedRectangle(cornerRadius: 5)
                        .foregroundColor(.yellow))
                
                
                
            }
        }.frame(width: 250)
        .padding()
        
    }
}

struct FeaturedProductCellView_Previews: PreviewProvider {
    
    
    static var previews: some View {
        FeaturedProductCellView(card: Card.example)
            .previewLayout(.sizeThatFits)
    }
}


