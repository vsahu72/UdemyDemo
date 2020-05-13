//
//  CategoryCellView.swift
//  UdemyDemo
//
//  Created by vikash sahu on 12/05/20.
//  Copyright © 2020 Aripra. All rights reserved.
//

import SwiftUI

struct CategoryCellView: View {
    var body: some View {
        HStack(spacing: 10){
            Image(systemName: "creditcard")
                
            Text("Finance & Accounting")
            Spacer()
            Image(systemName: "chevron.right")
        }.padding()
        .foregroundColor(Color("subtitile_color_dark"))
    }
}

struct CategoryCellView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCellView().previewLayout(.sizeThatFits)
    }
}
