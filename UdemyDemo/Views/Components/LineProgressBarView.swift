//
//  LineProgressBarView.swift
//  UdemyDemo
//
//  Created by vikash sahu on 12/05/20.
//  Copyright © 2020 Torry Harris Integrate Solutions. All rights reserved.
//

import SwiftUI




struct LineProgressBarView: View {
    private let value: Double
    private let maxValue: Double
    private let backgroundEnabled: Bool
    private let backgroundColor: Color
    private let foregroundColor: Color
    
    init(value: Double,
         maxValue: Double,
         backgroundEnabled: Bool = true,
         backgroundColor: Color = Color(UIColor(red: 245/255,
                                                green: 245/255,
                                                blue: 245/255,
                                                alpha: 1.0)),
         foregroundColor: Color = Color.black) {
        self.value = value
        self.maxValue = maxValue
        self.backgroundEnabled = backgroundEnabled
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
    }
    
    var body: some View {
        // 1
        ZStack {
            // 2
            GeometryReader { geometryReader in
                // 3
                if self.backgroundEnabled {
                    Capsule()
                        .foregroundColor(self.backgroundColor) // 4
                }
                
                Capsule()
                    .frame(width: self.progress(value: self.value,
                                                maxValue: self.maxValue,
                                                width: geometryReader.size.width)) // 5
                    .foregroundColor(self.foregroundColor) // 6
                    .animation(.easeIn) // 7
            }
        }
    }
    
    private func progress(value: Double,
                          maxValue: Double,
                          width: CGFloat) -> CGFloat {
        let percentage = value / maxValue
        return width *  CGFloat(percentage)
    }
}
struct LineProgressBarView_Previews: PreviewProvider {
    @State private var sliderValue: Double = 0
    private let maxValue: Double = 10
    
    static var previews: some View {
        LineProgressBarView(value: 5,
                maxValue: 10,
                foregroundColor: .green)
        .frame(height: 10)
        .padding(30)
        .previewLayout(.sizeThatFits)
        
    }
}
