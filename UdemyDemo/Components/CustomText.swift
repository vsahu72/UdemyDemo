//
//  CustomText.swift
//  Home-Automation-SwiftUI
//
//  Created by Manasa Jain on 11/03/20.
//  Copyright © 2020 Torry Harris Integrate Solutions. All rights reserved.
//

import SwiftUI

let SF_PRO_DISPLAY_BOLD = "SF Pro Display Bold"
let SF_PRO_DISPLAY_SEMIBOLD = "SF Pro Display Semibold"
let SF_PRO_DISPLAY_MEDIUM = "SF Pro Display Medium"
let SF_PRO_DISPLAY_REGULAR = "SF Pro Display Regular"


let SF_PRO_TEXT_BOLD = "SF Pro TEXT Bold"
let SF_PRO_TEXT_SEMIBOLD = "SF Pro TEXT Semibold"
let SF_PRO_TEXT_MEDIUM = "SF Pro TEXT Medium"
let SF_PRO_TEXT_REGULAR = "SF Pro TEXT Regular"



struct CustomText: View {
    var text : String
    var body: some View {
       Text(text)
       .font(.headline)
    }
}

struct PrimaryText: View {
    var text : String
    var body: some View {
        Text(text)
            .modifier(TextStyleSPDBold(size: 22, color: .white))
        .frame(maxWidth: .infinity)
        .padding()
        .background(Color.green)
        
    }
}


struct TextStyleSPDBold : ViewModifier {
    var size : CGFloat
    var color : Color = .black
    func body(content: Content) -> some View {
        content
            .font(Font.custom(SF_PRO_DISPLAY_BOLD, size: size).weight(.bold))
            .foregroundColor(color)
    }
}

struct TextStyleSPDRegular : ViewModifier {
    var size : CGFloat
    var color : Color = .black
    func body(content: Content) -> some View {
        content
            .font(Font.custom(SF_PRO_DISPLAY_REGULAR, size: size))
            .foregroundColor(color)
    }
}

struct TextStyleSPDMedium : ViewModifier {
    var size : CGFloat
    var color : Color = .black
    func body(content: Content) -> some View {
        content
            .font(Font.custom(SF_PRO_DISPLAY_MEDIUM, size: size))
            .foregroundColor(color)
    }
}

struct TextStyleSPDSemibold : ViewModifier {
    var size : CGFloat
    var color : Color = .black
    func body(content: Content) -> some View {
        content
            .font(Font.custom(SF_PRO_DISPLAY_SEMIBOLD, size: size))
            .foregroundColor(color)
    }
}

struct TextStyleSPTBold : ViewModifier {
    var size : CGFloat
    var color : Color = .black
    func body(content: Content) -> some View {
        content
            .font(Font.custom(SF_PRO_TEXT_BOLD, size: size))
            .foregroundColor(color)
    }
}

struct TextStyleSPTRegular : ViewModifier {
    var size : CGFloat
    var color : Color = .black
    func body(content: Content) -> some View {
        content
            .font(Font.custom(SF_PRO_TEXT_REGULAR, size: size))
            .foregroundColor(color)
    }
}

struct TextStyleSPTMedium : ViewModifier {
    var size : CGFloat
    var color : Color = .black
    func body(content: Content) -> some View {
        content
            .font(Font.custom(SF_PRO_TEXT_MEDIUM, size: size))
            .foregroundColor(color)
    }
}

struct TextStyleSPTSemibold : ViewModifier {
    var size : CGFloat
    var color : Color = .black
    func body(content: Content) -> some View {
        content
            .font(Font.custom(SF_PRO_TEXT_SEMIBOLD, size: size))
            .foregroundColor(color)
    }
}


struct CustomText_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            CustomText(text: "Custom text")
            .previewDisplayName("Custom text")
            PrimaryText(text: "Primary text")
            .previewDisplayName("Primary text")
        }
        .previewLayout(.sizeThatFits)
        .padding(10)
    }
}
