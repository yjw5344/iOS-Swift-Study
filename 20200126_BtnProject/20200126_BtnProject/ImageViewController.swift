//
//  ImageViewController.swift
//  20200126_BtnProject
//
//  Created by Jungwon on 2020/01/26.
//  Copyright © 2020 Jungwon. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet var imageBtn: UIButton!
    @IBOutlet var mainImageView: UIImageView!
    
    let btnTitleList = ["버튼1","버튼2","버튼3","버튼4","버튼5","버튼6"]
    let initialTitleList = ["영화 추천 1","영화 추천 2","영화 추천 3","영화 추천 4","영화 추천 5", "영화 추천 6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //imageBtn.setTitle("영화 추천", for: .normal)
        
        imageBtn.setTitle(initialTitleList.randomElement(), for: .normal)
        
        imageBtn.setTitleColor(.black, for: .normal)
        imageBtn.clipsToBounds = true
        imageBtn.layer.borderWidth = 1
        imageBtn.layer.borderColor = UIColor.black.cgColor
        imageBtn.layer.cornerRadius = 15
        imageBtn.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 30/255, alpha: 1)
        
        
        mainImageView.image = UIImage(named: "1")
        mainImageView.backgroundColor = UIColor.black
        mainImageView.contentMode = .scaleAspectFill

    }
    
    @IBAction func imageBtnClicked(_ sender: Any) {
        let randomImageNumber = Int.random(in: 1...3)
        imageBtn.setTitle("다시 영화 추천", for: .normal)
        mainImageView.image = UIImage(named: "\(randomImageNumber)")
        
        
        imageBtn.setTitle(btnTitleList.randomElement(), for: .normal)
        
        
    }
    

}

