# iOS - Swift Study

## 개요

iOS 및 Swift 관련 Study 내용입니다.

## 기간

2020년 1월 24일 ~ 2020년 1월 27일 ( 설 명절 😀)

## 목차

[DAY01 학습내용](#DAY01-학습내용)

[DAY02 학습내용](#DAY02-학습내용)

[DAY03 학습내용](#DAY03-학습내용)

[DAY04 학습내용](#DAY04-학습내용)


## DAY01 학습내용

<img src="./img/1-1.jpeg" width="450">

<img src="./img/1-2.jpeg" width="450">

<img src="./img/1-3.jpeg" width="450">

<img src="./img/1-4.jpeg" width="450">

<img src="./img/1-5.jpeg" width="450">

<img src="./img/1-6.jpeg" width="450">

<img src="./img/1-7.jpeg" width="450">

<img src="./img/1-8.jpeg" width="450">

<br>

<hr>

__< iOS 구조 >__

- CocoaTouch - Foundation(문법), UIKit(화면), ... <- 제일 많이 사용되는 파트

- Media - 사진, 영상, 음악, 파일 ,카메라, ...

- CoreService - 센서, GPS, ...

- CoreOS - 하드웨어, 네트워크, 전원, 배터리와 같은 하드웨어와 관련된 기능 담당

__<추가적으로 공부해야될 내용>__

1. segue(세그웨이) 란?

<br>

## DAY02 학습내용

<img src="./img/2-1.jpeg" width="450">

<img src="./img/2-2.jpeg" width="450">

<img src="./img/2-3.jpeg" width="450">

<br>

iOS에서 스토리보드의 View를 소스코드나 헤더에 등록하게 되면 @IBOutlet 형식으로 등록하게 된다.

여기서 IBO는 Interface Builder Outlet의 의미를 가진다.

<hr>

__<추가적으로 공부해야될 내용>__

1. outlet의 정의 확실히 하기? -> 스토리보드의 UIView 요소를 코드에서 매칭하는 것을 의미
2. outlet에서 weak과 strong의 의미
3. iOS에서의 화면 생성주기 파악
4. View 객체에 대해서 더 공부

<br>

## DAY03 학습내용

1. 테이블뷰 (참고, 아이폰 설정(테이블 뷰)의 한 Cell의 높이가 44이다.  따라서 앱을 만들 때, 이 높이를 참고해서 만들면 편하다.)
2. 간단한 UI 작업
3. cocoapod을 이용한 외부 라이브러리 이용방법
4. 카메라 모듈 이용해보기 (202001_Practive 프로젝트 참고)

### cocoapod 사용법

1. terminal 앱을 킨다.
2. "sudo gem install cocoapods" 을 터미널에 입력한다. cocoapods를 터미널을 통해서 설치하는 과정
3. 터미널을 통해 프로젝트 폴더로 이동( 프로젝트.xcodeproj 파일이 존재하는 경로까지 이동)
4. 위의 경로에서 "pod init"을 입력 -> cocoapod을 initialize 한다.
5. 해당 경로에 podfile 이 생성된다.
6. (1) podfile을 수정한다. ( target iOS version 및 사용하고자 하는 프레임워크를 추가한다.)
7. (2) podfile을 수정한다. ( 사용하고자 하는 프레임워크는 일반적으로 해당 프레임워크 github의 readme.md에 명시되어 있다.)
8. 다시 터미널에서 pod install을 하면 해당 라이브러리가 설치된다. ( 주의, podfile이 텍스트편집기를 통해 편집될 경우 인코딩 에러가 생길 수 있다. 따라서 vi 환경 or xcode를 이용해 수정하면 인코딩 문제를 방지 할 수 있다.)
9. pod install을 통해 생성된, 파일 중 workspace 확장자로 끝나는 xCode 프로젝트를 통해서 작업 다시 시작하면 된다.

### 카메라 모듈 사용법

1. 카메라 모듈의 경우 -> 외부 라이브러리를 통해서 손쉽게 사용이 가능하다.
2. YPImagePicker 라이브러리를 통해서 카메라 모듈을 쉽게 사용할 수 있다.
3. YPImagePicker 구체적 사용법의 경우, github의 검색을 통해서 찾아볼 것!

<hr>

__<추가적으로 공부해야될 내용>__

1. 스위프트 문법 공부해야 될 듯..

<br>

## DAY04 학습내용

1. 네트워크 통신을 이용한 통신방법
2. Almofire - SwiftyJSON 을 이용해서 영화진흥위원회에서 간단한 데이터 가져와서 테이블뷰에 뿌리기 (BoxOffice 프로젝트 참고)

### 네트워크 통신 방법
1. iOS에서 http 통신을 할 때, Almofire - swiftyJSON 조합을 일반적으로 많이 사용한다. (안드로이드의 경우, retrofit을 주로 사용한다.)
2. 위와 같은 네트워크 통신을 사용하기 위해서는 plist 파일에서 권한 부여를 먼저 설정해야한다. (안드로이드의 경우, Permission에 해당)
3. 따라서 xCode 프로젝트에서 plist 파일에서 ATS(App Transport Security) 설정을 해줘야한다.
4. Properties에서 딕셔너리 형태의 App Transport Security Setting 을 추가한다.
5. 위에서 추가한 ATS 하위에 key : Allow Arbitrary Loads / value : true 형태로 추가한다. ( 네트워크 허용에 대한 내용)
6. 코드를 통해서 통신을 진행한다. (Almofire 이용)
7. Almofire를 통해 XML 또는 JSON 형태로 결과를 받아 올 수 있으며, response를 JSON으로 받아오면 swiftyJSON을 이용해 파싱을 하여 원하는 데이터를 정제하여 사용하면 된다.

<hr>

__<추가적으로 공부해야될 내용>__

1. 최근 앱에서 realm이라는 데이터베이스를 많이 사용 -> 공부할 필요가 있음
2. 테이블뷰에 대해서 좀 더 학습할 필요가 있음 (section 및 cell)
