//
//  NoiseMaker.swift
//  NoiseMaker
//
//  Created by Denis Calixto on 11/18/19.
//  Copyright © 2019 Langara. All rights reserved.
//

import Foundation
import AVFoundation

class NoiseMaker {
    
    let audioFileNames = ["applause", "bubbles", "guitar", "monster"]
    var players = [AVAudioPlayer?]()
    
    init() {
        players = audioFileNames.map({(filename: String) -> AVAudioPlayer? in
            if let url = Bundle.main.url(forResource: filename, withExtension: "wav") {
                return try? AVAudioPlayer(contentsOf: url)
            }
            else {
                return nil
            }
        })
//        for filename in audioFileNames {
//            if let url = Bundle.main.url(forResource: filename, withExtension: "wav") {
//                players.append(try? AVAudioPlayer(contentsOf: url))
//            }
//        }
    }
    
    func playApplause() {
        players[0]?.play()
    }
    
    func playBubbles() {
        players[1]?.play()
    }
    
    func playGuitar() {
        players[2]?.play()
    }
    
    func playMonster() {
        players[3]?.play()
    }
}
