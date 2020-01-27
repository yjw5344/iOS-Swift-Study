//
//  BoxOfficeTableViewCell.swift
//  BoxOffice
//
//  Created by Jungwon on 2020/01/27.
//  Copyright © 2020 Jungwon. All rights reserved.
//

import UIKit

/*
 1. 테이블뷰컨트롤러 화면 생성
 2. 테이블뷰컨트롤러 로직 새성
 3. 테이블뷰컨트롤러 매칭
 
 4. 테이블뷰셀 화면 생성(디자인)
 5. 테이블뷰셀 로직 생성
 6. 테이블뷰셀 매칭
 
 7. 테이블뷰셀아이덴티파이어 설정
 
 8. 테이블뷰셀 아웃렛 설정 (뷰 이름 지어주는 것이 테이블뷰셀의 역할)

 9. 테이블뷰컨트롤러에서 테이블뷰셀을 설정해야한는 함수를 호출한다.
 
 */

class BoxOfficeTableViewCell: UITableViewCell {

    @IBOutlet var backView: UIView!
    @IBOutlet var rankLabel: UILabel!

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var openLabel: UILabel!
    
    @IBOutlet var currentLabel: UILabel!
    @IBOutlet var totalLabel: UILabel!
}
