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

// ex. 유튜브 프리미엄
var user = true // true : 유튜브 프리미엄 가입자, false : 유튜브 프리미엄 미가입자
if user == true {
    print("광고 제거")
} else {
    print("광고 보여주기")
}

// ex. 만 14세 회원가입

var signInAge = 20
signInAge = 8
if signInAge > 14 {
    print("부모님 동의 없이 가입 가능")
} else {
    print("부모님의 동의가 있어야 가입 가능")
}

// ex. 배민

var orderPrice = Int.random(in: 1...100) * 1000

if orderPrice > 15000 {
    print("주문 접수 완료")
} else {
    print("최소 주문 금랙 15000원을 맞춰주세요")
}

// ex. 신조어 검색기 : 존맛탱
var newWord = "JMT"
if newWord == "JMT"{
    print("겁나 맛있음")
} else {
    print("신조어 검색 결과를 찾지 못했음")
}

if newWord == "JMT" {
    print("엄청 맛있음")
} else if newWord == "#G" {
    print("시아버지")
} else if newWord == "스드메" {
    print("스튜디오 드레스 메이크업")
} else {
    print("신조어 검색 결과를 찾지 못했음")
}

// ex. 주문 횟수 0~4회 1000원 쿠폰, 5~9회 5000원 쿠폰, 10~14회 10000원 쿠폰, 그 이상은 5만원 쿠폰
var orderCnt = Int.random(in: 1...50)
print("\n주문 횟수는 \(orderCnt)회 입니다\n")
if orderCnt >= 0 && orderCnt < 5 {
    print("1000원 쿠폰")
} else if orderCnt > 4 && orderCnt < 10 {
    print("5000원 쿠폰")
} else if orderCnt >= 10 && orderCnt < 15 {
    print("10000원 쿠폰")
} else {
    print("50000원 쿠폰")
}

// ex. 배달비 추가금 : 최종 주문 금액 10000원 이하        배달비 3000원,
//                             10000원 ~ 15000원  배달비 2000원,
//                             15000원 ~ 20000원  배달비 1000원,
//                             그 이상의 주문 금액 배달비 없음

print("\n")
var finalOrderPrice = Int.random(in: 10...30) * 1000
print("최종 주문 금액은 \(finalOrderPrice)입니다.")
if finalOrderPrice <= 10000 {
    print("배달비 3000원")
} else if finalOrderPrice > 10000 && finalOrderPrice <= 15000 {
    print("배달비 2000원")
} else if finalOrderPrice > 15000 && finalOrderPrice <= 20000 {
    print("배달비 1000원")
} else {
    print("배달비 없음")
}



print("\n")
var userPrice = 10000 // 첫번째 케이스에 들어가고 , 다음 case에는 들어가지 않는다.

switch userPrice {
case 0...10000:
    print("배달비 3000원")
case 10000...15000:
    print("배달비 2000원")
case 15000...20000:
    print("배달비 1000원")
default:
    print("배달비 없음")
}

print("\n")

for item in 1...100{
    print("\(item)위")
}

print("\n")

var friend = ["철수", "영희", "민수", "Jack", "하하하"]
friend.append("무지")
friend.append("카카오")
friend.append("라인")

friend.insert("두번째", at: 1)
friend.insert("첫번째", at: 0)


for name in friend {
    print("\(name)는 내 친구")
}

print("\n")

var numList : [Int] = []
for i in 1...100{
    numList.append(i)
}
print(numList)

