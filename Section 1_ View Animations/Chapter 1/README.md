# Section 1: View Animations
## Chapter 1: Getting Started with View Animations

### # 요약 정리
#### @ Your first animation
* UIView의 Class method인 animate 함수의 parameter
	* withDuration: animation의 duration
	* delay: animation이 시작되고 두번째 UIKit이 기다리는 시간
	* options: 
		* layoutSubviews: 
		* allowUserInteraction:
		* beginFromCurrentState:  
		* `repeat`:  
		* autoreverse:  
		* overrideInheritedDuration:  
		* overrideInheritedCurve:  
		* allowAnimatedContent:  
		* showHideTransitionViews:  
		* overrideInheritedOptions:  
		* curveEaseInOut:  
		* curveEaseIn:  
		* curveEaseOut:  
		* curveLinear:  
		* transitionFlipFromLeft:  
		* transitionFlipFromRight:  
		* transitionCurlUp:  
		* transitionCurlDown: 
		* transitionCrossDissolve: 
		* transitionFlipFromTop: 
		* transitionFlipFromBottom: 
		* preferredFramesPerSecond60: 
		* preferredFramesPerSecond30: 
	* animations: animation이 실행 되는 closure부분
	* completion: animation이 완료 된 후 실행 된 후 closure

#### @ Animatable properties: animate 가 가능한 properties
* Position and Size: 크기를 늘리거나 줄이고, 움직일 수 있다, mutable
	* bounds
	* frame
	* center
* Appearance: 뷰의 모습을 바꿀 수 있음
	* backgroundColor
	* alpha: fade-in, fade-out effect를 줄 수 있음
* Transformation: 위와 비슷하게 크기와 위치 변경 가능하고, 회전 효과를 줄 수 있음
	* transform

#### @ Animation options: option을 이용해 animation을 custom 할수 있음, option은 0 개 이상 줄 수 있음 [], [.xxx], [.xxx, .yyy, …] => option이 하나 일때, bracket 생략 가능 
* Repeating
	* .repeat
	* .autoreverse
* Animation easing
	* .curveLinear
	* .curveEaseIn
	* .curveEaseOut
	* .curveEaseInOut

#### @ Challenges