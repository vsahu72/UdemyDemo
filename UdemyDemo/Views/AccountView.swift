//
//  AccountView.swift
//  UdemyDemo
//
//  Created by vikash sahu on 11/05/20.
//  Copyright © 2020 Aripra. All rights reserved.
//

import SwiftUI

struct AccountView: View {
    let dict: [String] = ["1","2","3","4","5","6","7","8","9","10"]
    var body: some View {
        VStack{
            List {
                ForEach(dict, id: \.self) {_ in
                    AccountSettingsOptionCellView()
                }
            }
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
