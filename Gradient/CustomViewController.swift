//
//  CustomViewController.swift
//  Gradient
//
//  Created by Александр Македон on 4/9/19.
//  Copyright © 2019 Алек Мак. All rights reserved.
//

import UIKit

class CustomViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let color1 = UIColor(red: 20 / 254, green: 9 / 245, blue: 49 / 235, alpha: 1.0).cgColor
        let color2 = UIColor(red:  36  / 255, green: 17 / 255, blue: 71 / 255, alpha: 1.0).cgColor
        let color3 = UIColor(red:  55  / 255, green: 34 / 255, blue: 97 / 255, alpha: 0.5).cgColor
        let color4 = UIColor(red:  120  / 255, green: 39 / 255, blue: 105 / 255, alpha: 0.8).cgColor
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [color1, color2, color3, color4]
        gradientLayer.startPoint = CGPoint(x:  0.0, y: 0.1)
        gradientLayer.endPoint = CGPoint(x: 0.2, y: 1.0)
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }

}
import AVFoundation
var player: AVAudioPlayer?

func playSound() {
    guard let url = Bundle.main.url(forResource: "Смоки Мо - Было и было (minus)", withExtension: "mp3") else { return }
    
    do {
        try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
        try AVAudioSession.sharedInstance().setActive(true)
        
        player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
        
        guard let player = player else { return }
        
        player.play()
        
    } catch let error {
        print(error.localizedDescription)
    }
}
