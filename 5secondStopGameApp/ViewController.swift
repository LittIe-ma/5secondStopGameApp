//
//  ViewController.swift
//  5secondStopGameApp
//
//  Created by yasudamasato on 2021/09/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var resultLabel: UILabel!
    @IBOutlet private weak var timeLabel: UILabel!
    @IBOutlet private weak var playButton: UIButton!
    private var elapsedTime: Float = 0.0
    private var timer: Timer?

    override func viewDidLoad() {
        super.viewDidLoad()

        timeLabel.layer.cornerRadius = 20.0
        playButton.layer.cornerRadius = 20.0

        self.buttonNameType = .start
        self.playButton.setTitle("start", for: .normal)
    }

    enum ButtonNameType {
        case start
        case stop
        case reset
    }
    private var buttonNameType: ButtonNameType!

    @IBAction func didTapPlay(_ sender: Any) {
        switch buttonNameType {
        case .start:
            buttonNameType = .stop
            playButton.setTitle("stop", for: .normal)
            timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { (timer) in
                self.elapsedTime += 0.01
                let milliSecond = Int(self.elapsedTime * 100) % 100
                let second = Int(self.elapsedTime) % 60
                let minutes = Int(self.elapsedTime / 60)
                self.timeLabel.text = String(format: "%02d:%02d:%02d", minutes, second, milliSecond)
            }
        case .stop:
            buttonNameType = .reset
            playButton.setTitle("reset", for: .normal)
            timer?.invalidate()
        case .reset:
            buttonNameType = .start
            playButton.setTitle("start", for: .normal)
            timeLabel.text = "00:00:00"
            elapsedTime = 0.0
        default:
            break
        }
    }


}

