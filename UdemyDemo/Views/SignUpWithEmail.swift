//
//  SignUpWithEmail.swift
//  UdemyDemo
//
//  Created by vikash sahu on 15/05/20.
//  Copyright © 2020 Torry Harris Integrate Solutions. All rights reserved.
//

import SwiftUI

struct SignUpWithEmail: View {
    @State private var emailField = ""
    var body: some View {
        ZStack{
            BackgroundView().edgesIgnoringSafeArea(.all)
            VStack{
                Spacer().frame(height:40)
                Text("Create an account in").foregroundColor(.white).font(.title)
                
                Spacer().frame(height:40)
                
                
                VStack{
                    TextField("Name",text:$emailField)
                    Rectangle().fill(Color.gray).frame(height:1)
                }.padding()
                
                VStack{
                    TextField("Email",text:$emailField)
                    Rectangle().fill(Color.gray).frame(height:1)
                }.padding()
                
                VStack{
                    HStack{
                        SecureField("Password (8+ charachters)",text:$emailField)
                        Image(systemName: "eye.fill")
                        .foregroundColor(.gray)
                    }
                    
                    Rectangle().fill(Color.gray).frame(height:1)
                }.padding()
                
                
                HStack{
                    
                    
                    Button(action: {}){
                        VStack(alignment:.leading){
                            
                            Text("Here an account").fixedSize().foregroundColor(Color.white).font(.body)
                            Text("Sign In").fixedSize().foregroundColor(Color.white).font(.body)
                        }.padding()
                        
                    }.frame(width:150)
                    
                    
                    
                    
                    Spacer()
                    Button(action: {}){
                        HStack{
                            
                            Text("Create account").fixedSize().foregroundColor(Color.black).font(.body)
                        }.padding()
                        
                    }.frame(width:150)
                        .background(Color.white)
                        .cornerRadius(5)
                    
                    
                    
                }.padding(.horizontal)
                
                
                Text("By clicking on \" create account\" you agree to our Team of Use and Privacy Policy").foregroundColor(Color.white).font(.body)
                
                
                Spacer()
            }
        }
    }
}

struct SignUpWithEmail_Previews: PreviewProvider {
    static var previews: some View {
        SignUpWithEmail()
    }
}
