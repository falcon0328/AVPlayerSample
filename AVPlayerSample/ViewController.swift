//
//  ViewController.swift
//  AVPlayerSample
//
//  Created by aseo on 2019/05/06.
//  Copyright © 2019年 Falcon Tech. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var playerItem: AVPlayerItem!
    var player: Player!
    @IBOutlet weak var videoView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidLayoutSubviews() {
        playerItem = AVPlayerItem(url: URL(string: "https://video-dev.github.io/streams/x36xhzz/x36xhzz.m3u8")!)
        player = Player(frame: videoView.frame, playerItem: playerItem!)
        videoView.addSubview(player!)
    }
    
    @IBAction func playButtonDidTapped(_ sender: Any) {
        player.play()
    }
    
    @IBAction func pauseButtonDidTapped(_ sender: Any) {
        player.pause()
    }
}

