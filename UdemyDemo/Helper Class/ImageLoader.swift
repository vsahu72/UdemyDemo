//
//  ImageLoader.swift
//  LoadingImages
//
//  Created by Vikash sahu on 11/03/20.
//  Copyright © 2020 Torry Harris Integrate Solutions. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

let imageCache = NSCache<NSString, AnyObject>()

class ImageLoader: ObservableObject {
    
    @Published var downloadedImage: UIImage?
    
        func load(urlString: String)  {
        guard let url = URL(string: urlString) else{
            print("Invalid thumb url =\(urlString)")
            return
        }
        self.downloadedImage = nil

        // check cached image
        if let cachedImage = imageCache.object(forKey: urlString as NSString) as? UIImage {
            self.downloadedImage = cachedImage
            return
        }

        // if not, download image from url
        URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
            if error != nil {
                print(error!)
                return
            }

            DispatchQueue.main.async {
                if let image = UIImage(data: data!) {
                    imageCache.setObject(image, forKey: urlString as NSString)
                    self.downloadedImage = image
                }
            }

        }).resume()
    }
}
