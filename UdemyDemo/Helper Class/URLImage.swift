//
//  URLImage.swift
//  LoadingImages
//
//  Created by Mohammad Azam on 6/20/19.
//  Copyright © 2019 Mohammad Azam. All rights reserved.
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
