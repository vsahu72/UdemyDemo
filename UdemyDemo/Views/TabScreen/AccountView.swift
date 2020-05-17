//
//  AccountView.swift
//  UdemyDemo
//
//  Created by vikash sahu on 11/05/20.
//  Copyright © 2020 Torry Harris Integrate Solutions. All rights reserved.
//

import SwiftUI

struct AccountView: View {
    let dict: [String] = ["1","2","3","4","5","6","7","8","9","10"]
    var body: some View {
        NavigationView{
        VStack{
            
            
            GeometryReader { g in
                   ScrollView {
                       AccountHeaderView()
                       List {
                        ForEach(self.dict, id: \.self) {_ in
                              AccountSettingsOptionCellView()
                          }
                       }.frame(width: g.size.width - 5, height: g.size.height, alignment: .center)
                   }

            }}
            
            .navigationBarTitle(Text(""), displayMode: .inline)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Text("Account") , trailing:
                
                Button(action: {}) {
                    HStack {
                        Image(systemName: "cart")
                            .foregroundColor(.gray)
                    }
            })
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}

//
////
////  AccountView.swift
////  UdemyDemo
////
////  Created by vikash sahu on 11/05/20.
////  Copyright © 2020 Torry Harris Integrate Solutions. All rights reserved.
////
//
//import SwiftUI
//
//struct AccountView: View {
//    let dict: [String] = ["1","2","3","4","5","6","7","8","9","10"]
//    var body: some View {
//        NavigationView{
//            VStack{
//
//                GeometryReader { g in
//                    ScrollView {
//                        VStack{
//
//                            Spacer().frame(height:20)
//                            Circle()
//                                .fill(Color.purple)
//                                .frame(width:150,height:150)
//                                .overlay(VStack{
//
//                                    Text("VS").font(.largeTitle).fontWeight(.bold).foregroundColor(.white)
//                                })
//
//
//                            Text("Vikash Sahu").font(.largeTitle).fontWeight(.bold).foregroundColor(.black)
//
//
//                            HStack{
//                                Image("googleIcon").renderingMode(.original).resizable().frame(width:30,height:30)
//                                Text("vikash.aripra@gmail.com").font(.headline).foregroundColor(.gray)
//                            }
//
//                            Text("Become an instructor").font(.headline).foregroundColor(.blue)
//
//                        }
//
//                        List {
//                            ForEach(dict, id: \.self) {_ in
//                                AccountSettingsOptionCellView()
//                            }
//                        }
//                    }.frame(width: g.size.width - 5, height: g.size.height - 50, alignment: .center)
//                }
//            }
//
//
//
//
//        }
//    }
//
//    .navigationBarTitle(Text(""), displayMode: .inline)
//    .navigationBarBackButtonHidden(true)
//    .navigationBarItems(leading: Text("Account") , trailing:
//
//    Button(action: {}) {
//    HStack {
//    Image(systemName: "cart")
//    .foregroundColor(.gray)
//    }
//    })
//}
//}
//}
//
//struct AccountView_Previews: PreviewProvider {
//    static var previews: some View {
//        AccountView()
//    }
//}

struct AccountHeaderView: View {
    var body: some View {
        VStack{
            Spacer().frame(height:20)
            Circle()
                .fill(Color.purple)
                .frame(width:150,height:150)
                .overlay(VStack{
                    
                    Text("VS").font(.largeTitle).fontWeight(.bold).foregroundColor(.white)
                })
            
            Text("Vikash Sahu").font(.largeTitle).fontWeight(.bold).foregroundColor(.black)
            
            
            HStack{
                Image("googleIcon").renderingMode(.original).resizable().frame(width:30,height:30)
                Text("vikash.aripra@gmail.com").font(.headline).foregroundColor(.gray)
            }
            
            Text("Become an instructor").font(.headline).foregroundColor(.blue)
            
        }
    }
}
