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
    @IBOutlet weak var mediaView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let player = GPVideoPlayer.initialize(with: self.mediaView.bounds) {
            self.mediaView.addSubview(player)
            
            let url1 = URL(string: "https://san-sit-origin-mp5content.quickplay.com/singtel/ss/u/HOOQ/donottouch/sglavodT1/output_hls_r.ism/index.m3u8")!
            let url2 = URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")!
            let videoFilePath = Bundle.main.path(forResource: "video", ofType: "mp4")
            let url3 = URL(fileURLWithPath: videoFilePath!)
            
            player.loadVideos(with: [url1, url2, url3])
            player.isToShowPlaybackControls = true
            player.isMuted = true
            player.playVideo()
        }
    }
}

