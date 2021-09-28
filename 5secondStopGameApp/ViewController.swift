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

    override func viewDidLoad() {
        super.viewDidLoad()

        timeLabel.layer.cornerRadius = 20.0
        playButton.layer.cornerRadius = 20.0
    }

    @IBAction func didTapPlay(_ sender: Any) {
    }


}

