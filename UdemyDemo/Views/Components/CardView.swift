//
//  CustomView.swift
//  Home-Automation-SwiftUI
//
//  Created by Manasa Jain on 11/03/20.
//  Copyright © 2020 Torry Harris Integrate Solutions. All rights reserved.
//

import SwiftUI

struct Card {
    let bgImage: String
    let text: String
    
    static var example: Card {
        Card(bgImage: "bg img", text: "Home Jini One-Stop-Shop for alll your home needs.")
    }
}

struct CardView: View {
    let card: Card
    
    var body: some View {
        ZStack {
            
            Image("bg img")
                
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(color: .gray,radius: 5, x: 1, y: 1)
                
            VStack(){
                Text(card.text)
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                
            }.padding(.horizontal)
        }.padding(10)
        
    }
}


struct SmallCardView: View {
    let card: Card
    
    var body: some View {
        ZStack {
            
            URLImage(url: card.bgImage)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: .gray,radius: 5, x: 1, y: 1)
                
            VStack(){
                Text(card.text)
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                
            }.padding(.horizontal)
        }.frame(width : 140 , height: 140)
        .padding(5)
        
    }
}


struct GradientView: View {


var body: some View {
    LinearGradient(gradient: Gradient(colors: [Color.black, Color.blue]), startPoint: .leading, endPoint: .trailing)
        .overlay(
            VStack{
                Text("Skill up. Courses now up to 90% off.")
                    .foregroundColor(.white)
                 Text("1 day left")
                    .foregroundColor(.white)
            }

    ).frame(height: 80).padding()
    }
}
   

struct BackgroundView: View {
var body: some View {
    LinearGradient(gradient: Gradient(colors: [Color.purple, Color.pink]), startPoint: .topTrailing, endPoint: .bottomLeading)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
             CardView(card: Card.example)
             SmallCardView(card: Card.example)
             GradientView()
             BackgroundView()
        }.previewLayout(.sizeThatFits)
       
        
    }
}

