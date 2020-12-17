import Foundation
import AVFoundation

public struct RandomFartGenerator {
  
  static var player: AVAudioPlayer?
  
  public static func emit() {
    let number = Int.random(in: 0..<120)
    guard let fartUrl = Bundle.module.url(forResource: "\(0)", withExtension: nil) else {
      return
    }
    do {
      player = try AVAudioPlayer(contentsOf: fartUrl)
      player?.prepareToPlay()
      player?.play()
    } catch let error {
      print(error.localizedDescription)
    }
  }
}
