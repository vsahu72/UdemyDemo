//
//  OnboardingView.swift
//  App Onboarding
//
//  Created by Andreas Schultz on 10.08.19.
//  Copyright © 2019 Andreas Schultz. All rights reserved.
//

import SwiftUI

struct OnboardingView: View {
    var presentSignupView: (()->()) = {}
    var subviews = [
        UIHostingController(rootView: Subview(imageString: "meditating")),
        UIHostingController(rootView: Subview(imageString: "skydiving")),
        UIHostingController(rootView: Subview(imageString: "sitting"))
    ]
    
    var titles = ["Take video cources", "Learn from expert", "Go at your own place"]
    
    var captions =  ["from coocking to coding and everything in between", "Approachable expert-instructions, vetted by 40 million students", "Lifetime access to cources, watch them anytime, anywhere"]
    
    @State var currentPageIndex = 0
    
    var body: some View {
        VStack(alignment: .center) {
            PageViewController(currentPageIndex: $currentPageIndex, viewControllers: subviews)
                .frame(height: 400)
            
            HStack(alignment: .center) {
                        PageControl(numberOfPages: subviews.count, currentPageIndex: $currentPageIndex)
                        
                        
                }
                        .padding()
            
            Group {
                Text(titles[currentPageIndex])
                    .font(.title)
                Text(captions[currentPageIndex])
                .font(.body)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                    .padding(.horizontal)
            }.padding(5)
        
            
            Spacer()
            HStack{
               
                Button("Browse"){
                    self.presentSignupView()
                }
                    .foregroundColor(.white)
                    .padding(.leading,40)
                Spacer()
                Button("Signe In"){
                     self.presentSignupView()
                }
                .foregroundColor(.white)
                .padding(.trailing,40)
                
            }.frame( maxWidth: .infinity,maxHeight: 50, alignment: .center)
                .background(Color.blue)
            
        }
    }
}


#if DEBUG
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
#endif
