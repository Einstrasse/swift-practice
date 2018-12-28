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
