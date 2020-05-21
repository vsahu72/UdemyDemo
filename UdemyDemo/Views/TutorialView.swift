//
//  TutorialView.swift
//  UdemyDemo
//
//  Created by vikash sahu on 19/05/20.
//  Copyright © 2020 Torry Harris Integrate Solutions. All rights reserved.
//



import SwiftUI
import AVKit

struct TutorialView: View {
    @State private var index = 0
    @State var player = AVPlayer(url: URL(string: "http://techslides.com/demos/sample-videos/small.mp4")!)
    
    var body: some View {
        
        VStack{
            GeometryReader{ geo in
                ZStack{
                    if UIDevice.current.orientation.isLandscape{
                        Color.black.edgesIgnoringSafeArea(.all)
                    }
                    
                    VStack{
                        VideoPlayer(player: self.$player).frame(height: UIDevice.current.orientation.isLandscape ? geo.size.height : geo.size.height/3).edgesIgnoringSafeArea(.top)
                        
                        if !UIDevice.current.orientation.isLandscape{
                            
                            MainBody().padding(.top,-55)
                        }
                        Spacer()
                    }
                }
                
            }
            
        }
    }
}

struct TutorialView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialView()
    }
}

struct MainBody: View {
    @State private var currentPage = 1
    var body: some View {
        
        VStack(alignment:.leading){
            VStack(alignment:.leading,spacing:10){
                Text("The Complete Guide of SwiftUI").font(.title)
                Text("Vikash sahu").font(.body).foregroundColor(Color("subtitile_color"))
                appBar(index: $currentPage)
            }.padding([.leading,.top],15)
            PagerView(pageCount: 2, currentIndex: $currentPage) {
                LecturesView()
                MoreSettingsInLecturesView()
                
            }
        }.background(Color.white)
        
    }
    
}





struct appBar : View {
    
    @Binding var index : Int
    
    var body : some View{
        
        VStack(){
            
            
            VStack(){
                HStack(){
                    
                    Button(action: {
                        
                        self.index = 0
                        
                    }) {
                        
                        VStack(alignment:.leading){
                            
                            Text("Lectures")
                                .foregroundColor(Color("subtitile_color")).font(.body)
                                .fontWeight(self.index == 0 ? .bold : .none)
                            
                            Capsule().fill(self.index == 1 ? Color.white : Color("subtitile_color"))
                                .frame(height: 2).padding(.leading,-20)
                        }
                    }.frame(width: 100, height: 40, alignment: .leading)
                    
                    Button(action: {
                        
                        self.index = 1
                        
                    }) {
                        
                        VStack{
                            
                            Text("More")
                                .foregroundColor(Color("subtitile_color")).font(.body)
                                .fontWeight(self.index == 1 ? .bold : .none)
                            
                            Capsule().fill(self.index == 0 ? Color.white : Color("subtitile_color"))
                                .frame(height: 2)
                        }
                    }.frame(width: 100, height: 40, alignment: .leading)
                    
                    Spacer()
                    
                }
                Capsule().fill(Color.gray).opacity(0.5)
                    .frame(width:UIScreen.main.bounds.size.width, height: 2).padding(-11)
            }
            
        }
    }
    
}

struct LecturesView: View {
    var body: some View {
        
        List{
            LectureCellView()
            LectureCellView()
            LectureCellView()
        }
    }
    
}

struct MoreSettingsInLecturesView: View {
    
    init() {
        // To remove all separators including the actual ones:
        UITableView.appearance().separatorStyle = .none
    }
    
    var body: some View {
        
        List{
            Button(action:{}){
                HStack{
                    Image(systemName: "ellipsis")
                    
                    Text("About this course")
                    Spacer()
                }
                
            }
            
            
            Button(action:{}){
                HStack{
                    Image(systemName: "square.and.arrow.up")
                    
                    Text("Share this course")
                    Spacer()
                }
                
            }
            Button(action:{}){
                HStack{
                    Image(systemName: "message")
                    
                    Text("Q&A")
                    Spacer()
                }
                
            }
            Button(action:{}){
                HStack{
                    Image(systemName: "line.horizontal.3")
                    
                    Text("Resources")
                    Spacer()
                }
                
            }
            Button(action:{}){
                HStack{
                    Image(systemName: "bell")
                    
                    Text("Announcement")
                    Spacer()
                }
                
            }
            Button(action:{}){
                HStack{
                    Image(systemName: "star")
                    
                    Text("Add course to favorite")
                    Spacer()
                }
                
            }
            Button(action:{}){
                HStack{
                    Image(systemName: "square.and.arrow.down")
                    
                    Text("Archive to this courese")
                    Spacer()
                }
                
            }
        

        }.foregroundColor(Color("subtitile_color_dark"))
            
    }
    
}



