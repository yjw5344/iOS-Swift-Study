//
//  FoodDetailViewController.swift
//  RandomProject
//
//  Created by Jungwon on 2020/01/25.
//  Copyright © 2020 Jungwon. All rights reserved.
//

import UIKit

class FoodDetailViewController: UIViewController {

    // IBOutlet : 디자인 요소만 변경 가능
    @IBOutlet var foodLabel: UILabel!
    @IBOutlet var foodCheckButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        foodLabel.backgroundColor = UIColor.black
        foodLabel.text = "오늘 뭐 먹지?"
        foodLabel.textColor = UIColor.white
        
        // 모서리를 둥글게
        // 1. 권한부여 과정
        foodLabel.clipsToBounds = true
        // 2. 둥글기 정도
        foodLabel.layer.cornerRadius = 10
    
        // 테두리 색상
        foodLabel.layer.borderColor = UIColor.blue.cgColor
        foodLabel.layer.borderWidth = 2
        
        foodCheckButton.backgroundColor = UIColor.black
        foodCheckButton.setTitle("버튼 텍스트 넣기", for: .normal)
        foodCheckButton.setTitle("이제 그만 떼줘...", for: .highlighted)

    }
    
    @IBAction func foodCheckButtonClicked(_ sender: Any) {
        let foodList = ["김치찌개","김밥", "떡볶이"]
        foodLabel.text = "오늘은 \(foodList.randomElement()!)를 먹자!"
    }
    
}
