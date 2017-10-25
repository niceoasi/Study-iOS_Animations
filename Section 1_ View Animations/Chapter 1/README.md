# Section 1: View Animations
## Chapter 1: Getting Started with View Animations

### # 요약 정리
#### @ Your first animation
* UIView의 Class method인 animate 함수의 parameter
	* withDuration: animation의 duration
	* delay: animation이 시작되고 두번째 UIKit이 기다리는 시간
	* options: 
		* layoutSubviews: Lay out subviews at commit time so that they are animated along with their parent.
		* allowUserInteraction: Allow the user to interact with views while they are being animated.
		* beginFromCurrentState: Start the animation from the current setting associated with an already in-flight animation. 
		* `repeat`: Repeat the animation indefinitely. 
		* autoreverse: Run the animation backwards and forwards (must be combined with the repeat option). 
		* overrideInheritedDuration: Force the animation to use the original duration value specified when the animation was submitted. 
		* overrideInheritedCurve: Force the animation to use the original curve value specified when the animation was submitted. 
		* allowAnimatedContent: Animate the views by changing the property values dynamically and redrawing the view. 
		* showHideTransitionViews: Hide or show views during a view transition. 
		* overrideInheritedOptions: The option to not inherit the animation type or any options. 
		* curveEaseInOut: Specify an ease-in ease-out curve, which causes the animation to begin slowly, accelerate through the middle of its duration, and then slow again before completing. 
		* curveEaseIn: An ease-in curve causes the animation to begin slowly, and then speed up as it progresses. 
		* curveEaseOut: An ease-out curve causes the animation to begin quickly, and then slow as it completes. 
		* curveLinear: A linear animation curve causes an animation to occur evenly over its duration. 
		* preferredFramesPerSecond60: A frame rate of 30 frames per second.
		* preferredFramesPerSecond30: A frame rate of 60 frames per second.
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