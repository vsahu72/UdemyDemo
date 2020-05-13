//
//  CustomButton.swift
//  Home-Automation-SwiftUI
//
//  Created by Manasa Jain on 11/03/20.
//  Copyright © 2020 Torry Harris Integrate Solutions. All rights reserved.
//

import SwiftUI


struct MyButtonStyle: ButtonStyle {
    var color: Color = .green
    
    public func makeBody(configuration: MyButtonStyle.Configuration) -> some View {
        
        configuration.label
            .foregroundColor(.white)
            .padding(15)
            .background(RoundedRectangle(cornerRadius: 5).fill(color))
            .compositingGroup()
            .shadow(color: .black, radius: 3)
            .opacity(configuration.isPressed ? 0.5 : 1.0)
            .scaleEffect(configuration.isPressed ? 0.8 : 1.0)
    }
}


struct Simple: ButtonStyle {
    var color: Color = .white
    
    public func makeBody(configuration: MyButtonStyle.Configuration) -> some View {
        
        configuration.label
            .background(color)
    }
}


struct BigButton: View {
    var title : String
    var action : () -> Void
    let bgColor = Color("primary")
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(Font.custom("Chalkboard", size: 22))
                .frame(minWidth: 0, maxWidth: .infinity,minHeight: 40,maxHeight: 40)
        }
        .background(bgColor)
        .foregroundColor(.white)
        .cornerRadius(.infinity)
    }
}

struct FloatingButton: View {
    var iconName : String = "plus"
    var action : () -> Void
    let bgColor = Color("primary")
    var body: some View {
        VStack {
           // Spacer()
            HStack {
                Spacer()
                Button(action: {}) {
                    Image(systemName: iconName)
                        .font(.title)
                    
                }
                .padding(20)
                .foregroundColor(Color.white)
                .background(Color.green)
                .cornerRadius(.infinity)
                
            }
            .padding(.trailing, 10) // Add 30 points on the trailing side of the button
        }
    }
}

struct IconButton: View {
    var iconName : String = "magnifyingglass"
    var title : String = "Search"
    var action : () -> Void
    let bgColor = Color("primary")
    var body: some View {
      Button(action: action) {
        HStack{
            Image(systemName: iconName)
            Text(title)
                .padding(.horizontal)
            
        }.padding()
      }
      .foregroundColor(Color.white)
      .background(Color.green)
      .cornerRadius(8)
    }
}

struct BorderButton: View {
    var title : String
    var action : () -> Void
    let bgColor = Color("primary")
    var body: some View {
     Button(action: action) {
        Text(title)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.green, lineWidth: 2))
        }
    }
}

struct TextWrapperButton: View {
    var title : String
    @Binding var selectedText : String
    var body: some View {
        Button(action: { self.selectedText = self.title }) {
        HStack{
            Text(title)
                .padding(.horizontal)
        }
        .frame(maxHeight : 5)
        .padding()
        
      }
      .foregroundColor(Color.white)
      .background( selectedText == title ? Color.red : Color.gray)
      .cornerRadius(.infinity)
    }
}


struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            BigButton(title: "LOGIN", action: {})
                .previewDisplayName("BIG Button")
            FloatingButton(action: {})
            .previewDisplayName("Floating Button")
            IconButton(action: {})
            .previewDisplayName("Icon Button")
            
            BorderButton(title: "Border Button", action: {})
            .previewDisplayName("Border Button")
            
           // TextWrapperButton(title: "TextWrapper Button", selectedText: .constant("All Category"))
           // .previewDisplayName("TextWrapper Button")
            
             
        }
        .previewLayout(.sizeThatFits)
        .padding(10)
    }
}
