//
//  Player.swift
//  AVPlayerSample
//
//  Created by aseo on 2019/05/06.
//  Copyright © 2019年 Falcon Tech. All rights reserved.
//

import Foundation

import Foundation
import AVFoundation
import UIKit

/// メディアを再生するプレイヤーを管理するクラス
class Player: UIView {
    /// メディアの再生操作とタイミング管理をするオブジェクト
    var player: AVPlayer? {
        get {
            return playerLayer?.player
        }
        set {
            playerLayer?.player = newValue
        }
    }
    /// メディアの表示状態、再生状態を管理するオブジェクト
    private(set) var playerItem: AVPlayerItem
    /// メディアの視覚的な出力状態を管理するオブジェクト
    var playerLayer: AVPlayerLayer? {
        return layer as? AVPlayerLayer
    }
    /// このビューのレイヤー
    public static override var layerClass: AnyClass {
        return AVPlayerLayer.self
    }
    
    /// イニシャライザ
    ///
    /// - Parameters:
    ///   - frame: メディア再生をしたいビューのフレーム
    ///   - asset: メディアのアセット
    init(frame: CGRect, playerItem: AVPlayerItem) {
        self.playerItem = playerItem
        super.init(frame: frame)
        self.player = AVPlayer(playerItem: playerItem)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /// 動画を再生する
    func play() {
        player?.play()
    }
    
    /// 動画を一時停止する
    func pause() {
        player?.pause()
    }
}
