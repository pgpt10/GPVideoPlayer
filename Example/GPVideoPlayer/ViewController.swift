//
//  ViewController.swift
//  GPVideoPlayer
//
//  Created by pgpt10 on 02/19/2019.
//  Copyright (c) 2019 pgpt10. All rights reserved.
//

import UIKit
import GPVideoPlayer

class ViewController: UIViewController {
    
    @IBOutlet weak var mediaView: UIView?
    
    private var player: GPVideoPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        if let player = GPVideoPlayer.initialize(with: self.mediaView.bounds) {
//            player.isToShowPlaybackControls = true
//
//            self.mediaView.addSubview(player)
//
//            let url1 = URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")!
//            let videoFilePath = Bundle.main.path(forResource: "video", ofType: "mp4")
//            let url2 = URL(fileURLWithPath: videoFilePath!)
//
//            player.loadVideos(with: [url1])
//            player.isToShowPlaybackControls = true
//            player.isMuted = true
//            player.playVideo()
//        }
        
        //1. Create a URL
        let url: String? = "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4"
        guard let streamString = url, let streamURL = URL(string: streamString) else {
             return
        }
        print(streamURL.absoluteString)
        //2. Create PlayerLayer frame
        guard let frame = self.mediaView?.bounds else {
            return
        }
        player = GPVideoPlayer.initialize(with: frame)
        guard player != nil else {
            return
        }
        self.mediaView?.addSubview(player ?? UIView())
        
        player?.isToShowPlaybackControls = true
        player?.loadVideos(with: [streamURL])
        player?.isMuted = true
    }
    
    @IBAction func mediaPlayButtonPressed(_ sender: Any) {
          player?.playVideo()
    }
    
}

