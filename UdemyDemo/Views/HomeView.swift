//
//  HomeView.swift
//  UdemyDemo
//
//  Created by vikash sahu on 12/05/20.
//  Copyright © 2020 Torry Harris Integrate Solutions. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    @State var show = false
    private let initialLaunchKey = "isInitialLaunch"
    
    var body: some View {
        VStack {
            if show || UserDefaults.standard.bool(forKey: initialLaunchKey){
                TabViewContainer().transition(.move(edge: .bottom))
            } else {
                OnboardingView(presentSignupView: {
                    withAnimation {
                        self.show = true
                    }
                    UserDefaults.standard.set(true, forKey: self.initialLaunchKey)
                }).transition(.scale)
            }
            
        }
    }
}

struct HomeVIew_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
