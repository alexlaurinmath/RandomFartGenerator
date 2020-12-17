import Foundation
import AVFoundation

public struct RandomFartGenerator {
  
  var player: AVAudioPlayer?

  public init() {}
  public func emit() {
    let number = Int.random(in: 0..<120)
    guard let fartUrl = Bundle.module.url(forResource: "\(0)", withExtension: "mp3") else {
      return
    }
    do {
      let player = try AVAudioPlayer(contentsOf: fartUrl)
      player.prepareToPlay()
      player.play()
    } catch let error {
      print(error.localizedDescription)
    }
  }
}
