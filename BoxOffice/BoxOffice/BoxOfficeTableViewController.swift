//
//  BoxOfficeTableViewController.swift
//  BoxOffice
//
//  Created by Jungwon on 2020/01/27.
//  Copyright © 2020 Jungwon. All rights reserved.
//

import UIKit

// 네트워크 통신에 대한 준비
import Alamofire
import SwiftyJSON

// 네트워크 통신 준비 2. 권한 오픈 - info.plist



class BoxOfficeTableViewController: UITableViewController {

    var movieList = ["기생충", "어벤져스", "워드워Z", "스파이더맨"]
    let stringList = ["하이", "안녕", "곤니찌와", "알로하"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    AF.request("http://memolease.ipdisk.co.kr:1337/fortunes", method: .get).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                print("JSON: \(json)")
                
                for item in json.array! {
                    self.movieList.append(item["content"].stringValue)
                }
                
                // 변경된 데이터를 테이블뷰에 반영
                self.tableView.reloadData()
                
                
            case .failure(let error):
                print(error)
            }
        }
        
    }
    
    // 1. 셀 갯수 - numberOfRowsInSection
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.count
    }

    // 2. 셀 높이 - heightForRowAt
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
        // 아이폰 설정에서의 셀의 높이가 44 (참고)
    }
    
    // 3. 셀 디자인 - cellForRowAt
    // as - 타입 캐스팅
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 1. 어떤 셀을 사용할지 선택 - 셀의 화면과 로직을 매칭하는 것을 코드로 가져오기
        let cell = tableView.dequeueReusableCell(withIdentifier: "BoxOfficeTableViewCell", for: indexPath) as! BoxOfficeTableViewCell
        
        cell.rankLabel.text = "\(indexPath.row)위"
        cell.rankLabel.textColor = UIColor.black
        
        cell.titleLabel.text = movieList[indexPath.row]
        cell.openLabel.text = "2020년 10월 10일"
        cell.currentLabel.text = "1234명"
        cell.totalLabel.text = "1234명"
        
//        cell.totalLabel.textAlignment = .right
        cell.titleLabel.font = UIFont.boldSystemFont(ofSize: 17)
        
        cell.backView.layer.cornerRadius = 10
        
        return cell
    }
    
    
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return 2
//    }
    
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "일간 박스오피스"
    }
    
//    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        // 헤더를 꾸미고 싶을 때
//    }

}



// 테이블뷰 섹션별 셀 나누기 예제
// https://calmone.tistory.com/entry/iOS-UIKit-in-Swift-4-section%EC%9C%BC%EB%A1%9C-%EB%82%98%EB%88%84%EC%96%B4%EC%A7%84-UITableView-%EB%A7%8C%EB%93%A4%EA%B8%B0

// 외부 라이브러리 이용
// Alamofire - SwiftyJSON
// Alamofire를 이용하기 위해서 info.plist를 수정해줘야한다.
// info.plist에서 App Transport Security Settings 생성
// App Transport Security Settings 추가 -> Allow Arbitrary Loads : True

