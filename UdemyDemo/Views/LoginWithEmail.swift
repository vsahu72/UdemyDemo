//
//  LoginWithEmail.swift
//  UdemyDemo
//
//  Created by vikash sahu on 15/05/20.
//  Copyright © 2020 Torry Harris Integrate Solutions. All rights reserved.
//

import SwiftUI

struct LoginWithEmail: View {
    @State private var emailField = ""
    var body: some View {
        ZStack{
            BackgroundView().edgesIgnoringSafeArea(.all)
            VStack{
                Spacer().frame(height:40)
                Text("Wlcome back!").foregroundColor(.white).font(.title)
                Text("Enter your email to sign in to your account").foregroundColor(.white).font(.subheadline)
                
                Spacer().frame(height:40)
                
                
                VStack{
                    HStack{
                        Text("Email").font(.caption).foregroundColor(.white)
                        Spacer()
                    }
                    
                TextField("",text:$emailField)
                Rectangle().fill(Color.gray).frame(height:1)
                }.padding()
                
                
                HStack{

                    Spacer()
                    Button(action: {}){
                        HStack{
                            
                            Text("Next").fixedSize().foregroundColor(Color.black).font(.body)
                        }.padding()
                        
                    }.frame(width:150)
                        .background(Color.white)
                        .cornerRadius(5)
                    
                    
                    
                }.padding(.horizontal)
                
                
             
                
                
                Spacer()
            }
        }
    }
}

struct LoginWithEmail_Previews: PreviewProvider {
    static var previews: some View {
        LoginWithEmail()
    }
}
