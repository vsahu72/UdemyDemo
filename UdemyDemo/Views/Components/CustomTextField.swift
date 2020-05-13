//
//  CustomTextField.swift
//  Home-Automation-SwiftUI
//
//  Created by Manasa Jain on 11/03/20.
//  Copyright © 2020 Torry Harris Integrate Solutions. All rights reserved.
//

import SwiftUI

struct CustomSecureTextField: View {
    var placeHolder : String = "Password"
    @Binding var passwordField : String
    var body: some View {
       
        VStack(alignment: .center){
            HStack(alignment: .center){
                SecureField(placeHolder,text: $passwordField )
                Image(systemName: "eye.fill")
                    .foregroundColor(.gray)
                   
            }
            Divider()
        }
    }
}

struct CustomTextField: View {
    var placeHolder : String = "Username"
    @Binding var textField : String
    var body: some View {
       
        VStack{
            TextField(placeHolder,text: $textField)
            Divider()
        }
    }
}

struct SearchTextField: View {
    var placeHolder : String = "Search"
    @Binding var textField : String
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "magnifyingglass").foregroundColor(.gray)
                TextField(placeHolder, text: $textField)
                Image(systemName: "slider.horizontal.3")
                
            }
            Divider()
        }
    }
    
    
}

struct IconTextField: View {
    var placeHolder : String = "Search"
    @Binding var textField : String
   
    var body: some View {
        HStack {
            Image(systemName: "envelope")
            .foregroundColor(.gray).font(.headline)
            TextField(placeHolder, text:$textField)
        }
        .padding()
        .overlay(RoundedRectangle(cornerRadius: 8)
        .stroke(Color.gray, lineWidth: 1))
    }
    
}

struct NavigationTextField: View {
    var placeHolder : String = "Search"
    @Binding var textField : String
   
    var body: some View {
       HStack {
        
        TextField(placeHolder, text: $textField)
        
        Button(action: {})
        {
            Image(systemName: "chevron.right").padding(.horizontal)
            
        }
        .accentColor(.orange)
       }
       .padding()
       .overlay(Capsule().stroke(Color.gray, lineWidth: 1))
    }
    
}

struct BorderTextField: View {
    var placeHolder : String = "Search"
    @Binding var textField : String
   
    var body: some View {
       HStack {
        TextField(placeHolder, text: $textField)
       }
       .padding()
       .overlay(Capsule().stroke(Color.gray, lineWidth: 1))
    }
    
}


struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            CustomSecureTextField(passwordField: .constant("vikash"))
                .previewDisplayName("Password Textfield")
             
            CustomTextField(textField: .constant("vikash"))
                .previewDisplayName("Simple Textfield")
            
            SearchTextField(textField: .constant("vikash"))
                .previewDisplayName("Search Textfield")
            
            IconTextField(textField: .constant("vikash"))
            .previewDisplayName("Icon Textfield")
            
            NavigationTextField(textField: .constant("vikash"))
            .previewDisplayName("Navigation Textfield")
            
            BorderTextField(textField: .constant("vikash"))
            .previewDisplayName("Border Textfield")
        }
        .previewLayout(.sizeThatFits)
        .padding(10)
    }
}

