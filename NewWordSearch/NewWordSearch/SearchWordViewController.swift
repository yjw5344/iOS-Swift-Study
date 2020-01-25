//
//  SearchWordViewController.swift
//  NewWordSearch
//
//  Created by Jungwon on 2020/01/25.
//  Copyright © 2020 Jungwon. All rights reserved.
//

import UIKit

class SearchWordViewController: UIViewController {

    @IBOutlet var searchBtn: UIButton!
    @IBOutlet var searchResultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchResultLabel.backgroundColor = UIColor.systemPink
    }

    @IBAction func searchBtnClicked(_ sender: Any) {
        let tempWordsList = ["신조어1", "신조어2", "신조어3", "신조어4", "신조어5"]
        
        searchResultLabel.text = tempWordsList.randomElement()!
        
        
    }
}
