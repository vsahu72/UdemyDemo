//
//  ScreenUtil.swift
//  BaseProject
//
//  Created by vikash sahu on 08/04/20.
//  Copyright © 2020 Aripra. All rights reserved.
//

import Foundation
import UIKit


class ScreenUtil : NSObject {
     // Screen width.
     public var screenWidth: CGFloat {
        return UIScreen.main.bounds.width
    }

    // Screen height.
     public var screenHeight: CGFloat {
        return UIScreen.main.bounds.height
    }

     public var statusBarHeight : CGFloat {
        var statusHeight: CGFloat = 0.0
        if #available(iOS 13.0, *) {

            if let window = UIApplication.shared.keyWindow {
                statusHeight = window.windowScene?.statusBarManager?.statusBarFrame.height ?? 0.0
            }
        } else {
            // Fallback on earlier versions
            statusHeight = UIApplication.shared.statusBarFrame.height
        }
        return statusHeight
    }

}

extension UIApplication {
    var currentWindow: UIWindow? {
        connectedScenes
            .filter({$0.activationState == .foregroundActive})
            .map({$0 as? UIWindowScene})
            .compactMap({$0})
            .first?.windows
            .filter({$0.isKeyWindow}).first
    }
}
