# swift-practice

스위프트 공부를 위해 작성한 코드들을 담은 저장소입니다.

## Swift Console Application
스위프트는 기본적으로 iOS 앱, MAC 용 앱등을 작성하기 위한 언어인데, 콘솔 어플리케이션도 제작이 가능합니다.

관련 내용은 다음 링크의 블로그를 참고하였습니다.    
[링크](https://medium.com/quick-code/lets-build-a-command-line-app-in-swift-328ce274f1cc)    

### For MAC

#### 1. 설치 확인
스위프트가 설치되었는지를 확인해야 한다.
```
$ swift --version

Apple Swift version 4.0.4 (swiftlang-900.0.74.1 clang-900.0.39.2)
Target: x86_64-apple-macosx10.9
```

#### 2. 패키지 구조 생성
기본적인 패키지 구조를 생성한다.
```
swift package init --type executable
```
참고로 현재 작업 디렉토리와 같은 이름으로 생성한다.

- Products: 실행파일과 라이브러리 즉, 최종 산출물이 들어간다.
- Dependencies 우리가 이 패키지에서 사용할 다른 라이브러리들이 들어간다.
- Target: 메인 소스코드 모듈들이다.

소스 파일로 이동하면 헬로우 월드 보일러플레이트 코드가 `main.swift` 라는 파일명으로 있다.

#### 3. 빌드
다음 명령어로 빌드 할 수 있다.
```
swift build
```

#### 4. 실행
실행파일은 기본적으로 다음 경로에 위치하게 된다.    
```
.build/debug/{ProjectName}
```
실행해버리면 된다.

### 개발 환경
```Expressions are not allowed at the top level```라는 에러메시지가 나타난다.
다음 블로그의 글을 참조하여 문재를 해결하였다.    
[블로그](https://zeddios.tistory.com/69)    

```main.swift``` 파일을 메인 엔트리포인트로 잡고 ```main.swift``` 파일이 아닌 파일에서는 클래스를 선언한 뒤, 메인 파일에서 ```go()``` 함수를 호출하는 방식으로 하였다.

### 기본 문법 공부
기본 문법 공부는 다음 링크의 사이트에서 진행을 해 보았다. 기본 예제 문제들을 코드로 구현하는 식으로 해보았다.    
[링크](https://devxoul.gitbooks.io/ios-with-swift-in-40-hours/Chapter-3/extensions.html)    

소스코드들
```
Sources/swift-practice/...
```
    
코딩하다 보니, 옵셔널 값이 nil 인지 확인하는 방법이

```
	if left value = self.value {
		print ("Not Nil")
	} else {
		print ("Nil")
	}
```
로 나오는데, Deprecated 된 것 같은 것이
```
	if left != nil {
		print ("Not Nil")
	} else {
		print ("Nil")
	}
```
위와 같이 하는 것으로 바뀐 것 같다.

#### ``` enum.swift ```
##### 응용하기: NetworkError에 message라는 읽기 전용 속성을 추가하고, 에러에 대한 명확한 메시지를 반환하도록 만들어봅시다. 더 나아가서, 있을법한 다른 에러에 대한 경우도 추가해봅시다.


#### ``` extension.swift ```
##### 응용하기: 거꾸로 된 문자열을 반환하는 대신에, 자기 자신을 거꾸로 바꿔버리는 reverse() 메서드를 만들어보세요. 힌트: mutating 키워드와 self    
하다보면 self.characters 를 사용할 때 마다 컴파일 시 Deprecation Warning Message가 계속 나타나게 된다. self.characters 대신  self를 그냥 쓰면 된다.