//
//  URLImage.swift
//  LoadingImages
//
//  Created by vikash sahu on 11/03/20.
//  Copyright © 2020 Torry Harris Integrate Solutions. All rights reserved.
//

import Foundation
import SwiftUI

struct URLImage: View {
    
    @ObservedObject private var imageLoader = ImageLoader()
    private let imageBasePath = "https://www.homejini.com/storeImages/"
    var placeholder: Image
    
    init(url: String, placeholder: Image = Image("bg img")) {
        
        self.placeholder = placeholder
        self.imageLoader.load(urlString: imageBasePath + url)
    }
    
    var body: some View {
        if let uiImage = self.imageLoader.downloadedImage {
            return Image(uiImage: uiImage).resizable()
        } else {
            return placeholder.resizable()
        }
    }
    
}
