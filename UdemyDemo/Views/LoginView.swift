//
//  LoginView.swift
//  UdemyDemo
//
//  Created by vikash sahu on 14/05/20.
//  Copyright © 2020 Torry Harris Integrate Solutions. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        
        ZStack{
            BackgroundView().edgesIgnoringSafeArea(.all)
            VStack{
                Spacer().frame(height:40)
                Text("Sign in").foregroundColor(.white).font(.title)
                
                Spacer().frame(height:40)
                
                Button(action: {}){
                    HStack{
                        Image("envelopIcon").resizable().frame(width:20,height:20)
                            .foregroundColor(Color.red)
                            
                        Text("Sign in with email").fixedSize().foregroundColor(Color.black).font(.body)
                    }.padding()
                    
                }.frame(width: UIScreen.main.bounds.size.width-34)
                    .background(Color.white)
                    .cornerRadius(5)
                    
                
                Spacer().frame(height:40)
                
                HStack{
                    Rectangle().fill(Color.white).frame(height:1).padding()
                    Text("or").foregroundColor(.white)
                    Rectangle().fill(Color.white).frame(height:1).padding()
                }
                Spacer().frame(height:40)
                
                VStack{
                    Button(action: {}){
                        HStack{
                            Image("googleIcon").renderingMode(.original).resizable().frame(width:20,height:20)
                            
                            Text("Sign in with Google").fixedSize().foregroundColor(Color.black).font(.body)
                        }.padding()
                        
                    }.frame(width: UIScreen.main.bounds.size.width-34)
                        .background(Color.white)
                        .cornerRadius(5)
                    
                    Spacer().frame(height:20)
                    
                    Button(action: {}){
                        HStack{
                            Image("facebookIcon").renderingMode(.original).resizable().frame(width:20,height:20)
                            Text("Sign in with Facebook").fixedSize().foregroundColor(Color.black).font(.body)
                        }.padding()
                        
                    }.frame(width: UIScreen.main.bounds.size.width-34)
                        .background(Color.white)
                        .cornerRadius(5)
                    
                    Spacer().frame(height:20)
                    
                    Button(action: {}){
                        HStack{
                            Image("appleIcon").renderingMode(.original).resizable().frame(width:20,height:20)
                            Text("Sign in with Apple").fixedSize().foregroundColor(Color.black).font(.body)
                        }.padding()
                        
                    }.frame(width: UIScreen.main.bounds.size.width-34)
                        .background(Color.white)
                        .cornerRadius(5)
                    
                    Spacer().frame(height:20)
                }
                
               
                
                VStack{
                    Spacer()
                    
                    Button(action: {}){
                                       HStack{
                                           Text("New here?Create an account").fixedSize().foregroundColor(Color.white).font(.body)
                                       }.padding()
                                       
                                   }
                                   
                                     Spacer()
                    
                                   Button(action: {}){
                                       HStack{
                                           Text("Terms of use").fixedSize().foregroundColor(Color.white).font(.subheadline)
                                       }.padding()
                                       
                                   }
                }
               
                
                
                Spacer()
                
            }
        }
        
        
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
