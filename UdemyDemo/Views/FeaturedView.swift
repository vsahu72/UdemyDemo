//
//  FeaturedView.swift
//  UdemyDemo
//
//  Created by vikash sahu on 11/05/20.
//  Copyright © 2020 Aripra. All rights reserved.
//

import SwiftUI

struct FeaturedView: View {
    let dict: [String] = ["1","2","3","4","5","6","7"]
    var body: some View {
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
    }
}

struct FeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedView()
    }
}

//
//import SwiftUI
//
//struct HomeView: View {
//
//    @ObservedObject var homeVM: HomeViewModel
//    @State private var searchText = ""
//    @State private var selectedCategory = "All Category"
//    @State private var showCancelButton: Bool = false
//
//
//    init() {
//        homeVM = HomeViewModel()
//    }
//
//    var body: some View {
//        VStack {
//            VStack(spacing : 10){
//                Spacer()
//
//                Button("Select Location"){ }
//                    .foregroundColor(.white)
//                    .padding()
//                SearchView(searchText : $searchText , showCancelButton : $showCancelButton)
//                    .padding(.bottom , 20)
//            }
//            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 150)
//            .background(Color("primary"))
//
//
//            if showCancelButton {
//                List{
//                    ForEach(homeVM.allSubCategory.filter{ $0.text.hasPrefix(searchText) || searchText == ""}, id:\.id) {
//                        subcategory in Text(subcategory.text)
//                    }
//                }
//
//            }else{
//
//                ScrollView{
//                    CardView(card: Card.example)
//
//                    if !homeVM.categoryNameList.isEmpty{
//
//                        ScrollView (.horizontal, showsIndicators: false) {
//                            HStack {
//                                ForEach(homeVM.categoryNameList , id:\.self) { categoryName in
//                                    TextWrapperButton(title : categoryName ,selectedText :self.$selectedCategory)
//                                }
//                            }
//                        }
//
//                        if selectedCategory == "All Category" {
//                            ForEach(homeVM.categoryList , id:\.id) { category in
//                                CategoryView(catgory: category)
//                            }
//                        }else{
//                            CategoryView(catgory: homeVM.getCategory(selectedCategory: selectedCategory))
//                        }
//                    }
//                }.padding(.horizontal, 10)
//            }
//        }.edgesIgnoringSafeArea(.top)
//    }
//}
//
//extension UINavigationController
//{
//    override open func viewDidLoad() {
//        super.viewDidLoad()
//
//        //let app = UINavigationBarAppearance
//     //   app.back
//
//
//    }
//
//}
//
//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//    }
//}







