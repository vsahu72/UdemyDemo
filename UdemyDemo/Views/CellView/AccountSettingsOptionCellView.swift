//
//  AccountSettingsOptionCellView.swift
//  UdemyDemo
//
//  Created by vikash sahu on 12/05/20.
//  Copyright © 2020 Torry Harris Integrate Solutions. All rights reserved.
//

import SwiftUI

struct AccountSettingsOptionCellView: View {
    var body: some View {
           HStack(spacing: 10){
               Text("Finance & Accounting")
               Spacer()
               Image(systemName: "chevron.right")
           }.padding()
           .foregroundColor(Color("subtitile_color_dark"))
       }
}

struct AccountSettingsOptionCellView_Previews: PreviewProvider {
    static var previews: some View {
        AccountSettingsOptionCellView().previewLayout(.sizeThatFits)
    }
}
