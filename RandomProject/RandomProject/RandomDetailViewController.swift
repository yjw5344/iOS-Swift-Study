//
//  RandomDetailViewController.swift
//  RandomProject
//
//  Created by Jungwon on 2020/01/25.
//  Copyright © 2020 Jungwon. All rights reserved.
//

import UIKit

class RandomDetailViewController: UIViewController {

    @IBOutlet var randomLottoLabel: UILabel!
    @IBOutlet var randomLottoButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func randomLottoBtnClicked(_ sender: Any) {
        var pickNumber = Int.random(in: 1...45)
        randomLottoLabel.text = String(pickNumber)
        randomLottoButton.setTitle("다시 뽑기", for: .normal)
    }
}
