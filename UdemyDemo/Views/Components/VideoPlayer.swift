//
//  VideoPlayer.swift
//  UdemyDemo
//
//  Created by vikash sahu on 20/05/20.
//  Copyright © 2020 Aripra. All rights reserved.
//

import SwiftUI
import AVKit



class Host : UIHostingController<TutorialView>{
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        
        return .lightContent
    }
}

struct VideoPlayer : UIViewControllerRepresentable {
    
    @Binding var player : AVPlayer
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<VideoPlayer>) -> AVPlayerViewController {
        
        let controller = AVPlayerViewController()
        controller.player = player
        controller.showsPlaybackControls = true
        controller.videoGravity = .resize
        return controller
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: UIViewControllerRepresentableContext<VideoPlayer>) {
    }
}


//struct VideoPlayer_Previews: PreviewProvider {
//    static var previews: some View {
//        //VideoPlayer()
//    }
//}
