//
//  AudioPlayer.swift
//  RestartOnboarding
//
//  Created by Shubham Kumar on 07/05/22.
//

import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Cannot play the sound file!")
        }
    }
}
