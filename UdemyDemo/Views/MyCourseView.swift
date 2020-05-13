//
//  MyCourseView.swift
//  UdemyDemo
//
//  Created by vikash sahu on 11/05/20.
//  Copyright © 2020 Aripra. All rights reserved.
//

import SwiftUI

struct MyCourseView: View {
    let dict: [String] = ["1","2","3","4","5","6","7","8","9","10"]
    var body: some View {
        
        NavigationView{
        VStack{
            List {
                ForEach(dict, id: \.self) {_ in
                     MyCourceCellView(card: Card.example)
                }
            }
        }
            
            .navigationBarTitle(Text(""), displayMode: .inline)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Text("All cources") ,trailing:
                
                Button(action: {}) {
                    HStack {
                        Image(systemName: "cart")
                            .foregroundColor(.gray)
                    }
            })
        }
    }
}

struct MyCourseView_Previews: PreviewProvider {
    static var previews: some View {
        MyCourseView()
    }
}
