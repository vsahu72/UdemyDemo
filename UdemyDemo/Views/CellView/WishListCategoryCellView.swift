//
//  WishListCategoryCellView.swift
//  UdemyDemo
//
//  Created by vikash sahu on 12/05/20.
//  Copyright © 2020 Torry Harris Integrate Solutions. All rights reserved.
//

import SwiftUI

struct WishListCategoryCellView: View {
    var body: some View {
           HStack(spacing: 10){
               Image(systemName: "creditcard")
                   
               Text("Finance & Accounting")
               Spacer()
               
           }.padding()
           .foregroundColor(Color("subtitile_color_dark"))
       }
}

struct WishListCategoryCellView_Previews: PreviewProvider {
    static var previews: some View {
        WishListCategoryCellView().previewLayout(.sizeThatFits)
    }
}
