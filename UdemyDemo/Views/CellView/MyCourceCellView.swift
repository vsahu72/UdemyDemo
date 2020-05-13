//
//  MyCourceCellView.swift
//  UdemyDemo
//
//  Created by vikash sahu on 12/05/20.
//  Copyright © 2020 Torry Harris Integrate Solutions. All rights reserved.
//

import SwiftUI

struct MyCourceCellView: View {
    let card: Card
    @State private var modifierActive = true
    @State private var sliderValue: Double = 5
    private let maxValue: Double = 10
    
    var body: some View {
        HStack(alignment: .top) {
            
            Image("bg img")
            .resizable()
            .frame(width: 80, height: 80, alignment: .center)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            
            
            VStack(alignment: .leading, spacing: 5){
                Text("Complete Pythone Bootcamp: Go from zero to hero in pyhone 3")
                    .lineLimit(nil)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.black)
                    .font(.body)
                    
                
                Text("Joses Portilla")
                .foregroundColor(Color("subtitile_color"))
                
                LineProgressBarView(value: $sliderValue.wrappedValue,
                        maxValue: self.maxValue,
                        foregroundColor: .blue)
                .frame(height: 5)
                
                
                
                
                HStack{
                    Text("5%").foregroundColor(Color("subtitile_color"))
                    Text("complete").foregroundColor(Color("subtitile_color"))
                }
                
            }
        }.frame( height: 150, alignment: .leading)
        .padding(10)
        
    }
}

struct MyCourceCellView_Previews: PreviewProvider {
    static var previews: some View {
        MyCourceCellView(card: Card.example)
    }
}
