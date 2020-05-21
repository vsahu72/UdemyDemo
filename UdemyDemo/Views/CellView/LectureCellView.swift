//
//  LectureCellView.swift
//  UdemyDemo
//
//  Created by vikash sahu on 20/05/20.
//  Copyright © 2020 Aripra. All rights reserved.
//

import SwiftUI

struct LectureCellView: View {
    var body: some View {
        HStack(spacing: 20){
            Text("1")
            VStack(alignment:.leading){
                HStack(){
                    Image(systemName: "creditcard")
                                       
                    Text("Finance & Accounting").font(.callout).lineLimit(1)
                }
                Text("Video - 02:33 mins").font(.footnote)
            }
            
            Spacer()
            Image(systemName: "arrow.down.circle")
        }.padding(5)
        .foregroundColor(Color("subtitile_color_dark"))
    }
}

struct LectureCellView_Previews: PreviewProvider {
    static var previews: some View {
        LectureCellView().previewLayout(.sizeThatFits)
    }
}




