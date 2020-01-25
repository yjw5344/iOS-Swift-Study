import UIKit

// Step 01. 변수와 상수 그리고 타입
// 한 줄 주석

/* 여러 줄 주석
 *
 *
 */

// ex 회원가입 : 닉네임, 이메일, 나이, 평점



// 변수의 데이터 타입을 보고싶은 경우에는 option 키를 누르고 변수에서 좌클릭하면 확인이 가능하다.
var nickname = "Hahaha"
//var nickname : String = "Hahaha"
let email : String = "test@test.com"
var age = 10
//var age : Int = 10
var rate = 4
//var rate : Double = 4.5
var gender : Bool = true // true : 남자 , false : 여자


print("안녕하세요! 저는 \(nickname)이고 이메일은 \(email), 나이는 \(age)살, 평점은 \(rate)입니다.")

// 변수 변겅~!
nickname = "Hello"
age = 15
//rate = 4.8

// email은 상수여서 변경이 불가능하다.
// email = "test01@test.com"

print("안녕하세요! 저는 \(nickname)이고 이메일은 \(email), 나이는 \(age)살, 평점은 \(rate)입니다.")

// ex 영화분석 : 총 영화 갯수, 총 러닝타임, 장르, 평군 평점
//var movieCount : Int = 10;
//var movieTime : Int = 630
//var movieType : String = "SF"
//var movieRate : Double = 4.8

var movieCount = Int.random(in: 1...100)
var movieTime = Int.random(in: 120...1000)

var movieType = ["SF", "액션", "로맨스", "스릴러", "애니메이션"] // 배열(Array)
// 여러 개를 한번에 담는 방법 -> 집단 자료형
// 배열 : 1. 순서(인덱스)가 있음

var movieRate = Double.random(in: 1...5)

print("영화 갯수는 \(movieCount)이고, 총 영화 러닝타임은 \(movieTime)입니다. 많이 보신 영화의 장르는 \(movieType.randomElement()!)이고 영화 평균 평점은 \(movieRate)입니다")


// Optional - 옵셔널
// ex. 번호 인증
var phoneNumber = "01012345678"
// 형변환, 타입변환
var change = Int(phoneNumber)
//print(change)
// 옵셔널 처리
print(change!)

// 함수 : Function -> 실행하고 싶을 때 함수 이름을 직접 불러주어야한다.
func lottoProgram() {
    // ex 로또 뽑기
    let number1 : Int = Int.random(in: 1...45)
    let number2 : Int = Int.random(in: 1...45)
    let number3 : Int = Int.random(in: 1...45)

    print("오늘의 로또는 \(number1), \(number2), \(number3)번입니다")
}

lottoProgram()
lottoProgram()
lottoProgram()
lottoProgram()




