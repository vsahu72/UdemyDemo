//
//  WishlistView.swift
//  UdemyDemo
//
//  Created by vikash sahu on 11/05/20.
//  Copyright © 2020 Torry Harris Integrate Solutions. All rights reserved.
//

import SwiftUI

struct WishlistView: View {
    let dict: [String] = ["1","2","3","4","5","6","7","8","9","10"]
    var body: some View {
        NavigationView{
        VStack{
            List {
                ForEach(dict, id: \.self) {_ in
                    WishListCategoryCellView()
                }
            }
        }
         .navigationBarTitle(Text(""), displayMode: .inline)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Text("Wishlist") ,trailing:
                
                Button(action: {}) {
                    HStack {
                        Image(systemName: "cart")
                            .foregroundColor(.gray)
                    }
            })
        }
    }
}

struct WishlistView_Previews: PreviewProvider {
    static var previews: some View {
        WishlistView()
    }
}
