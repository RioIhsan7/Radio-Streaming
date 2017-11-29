//
//  File.swift
//  Radio Streming
//
//  Created by Rio Ihsan on 9/25/17.
//  Copyright © 2017 SERIOUS. All rights reserved.
//

import Foundation
import AVFoundation

class RadioFunction {
    static let sharedInstance = RadioFunction()
    
    private var isPlaying = false
    
    private var player =  AVPlayer(url: (NSURL(fileURLWithPath: "http://162.243.130.87/") as URL))
    
    func play() {
        player.play()
        isPlaying = true
    }
    
    func pause() {
        player.pause()
        isPlaying = true
        
    }
    
    func toogleButton() {
        if isPlaying {
            pause()
        } else {
            play()
            
        }
    }
    
    func currentPlaying() -> Bool {
        return isPlaying
    }
    
    
    
    
}

    
    
