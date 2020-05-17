//
//  FeaturedView.swift
//  UdemyDemo
//
//  Created by vikash sahu on 11/05/20.
//  Copyright © 2020 Torry Harris Integrate Solutions. All rights reserved.
//

import SwiftUI

struct FeaturedView: View {
    
    
    
    let dict: [String] = ["1","2","3","4","5","6","7"]
    var body: some View {
        NavigationView {
            VStack{
                ScrollView{
                    CardView(card: Card.example)
                    GradientView()
                    
                    
                    ScrollView (.horizontal, showsIndicators: false) {
                        HStack {
                            
                            ForEach(dict, id: \.self) {_ in 
                                FeaturedProductCellView(card: Card.example)
                            }
                        }
                    }
                }.padding(.horizontal, 10)
            }
                
            .navigationBarTitle(Text(""), displayMode: .inline)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(trailing:
                
                Button(action: {}) {
                    HStack {
                        Image(systemName: "cart")
                            .foregroundColor(.gray)
                    }
            })
            
        }
    }
    
}

struct FeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedView()
    }
}
