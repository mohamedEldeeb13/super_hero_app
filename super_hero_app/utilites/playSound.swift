//
//  playSound.swift
//  super_hero_app
//
//  Created by Mohamed Abd Elhakam on 21/12/2023.
//

import Foundation
import AVFoundation

var audioPlayer : AVAudioPlayer?

func Play(name : String , type : String) {
    if let path = Bundle.main.path(forResource: name, ofType: type) {
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        }catch{
            print("this not sound file")
        }
    }
}
