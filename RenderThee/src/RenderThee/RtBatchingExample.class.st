Class {
	#name : #RtBatchingExample,
	#superclass : #LOGLTemplate,
	#instVars : [
		'renderer',
		'morph',
		'picture',
		'bounds'
	],
	#category : #'RenderThee-Batching'
}

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 6/17/2021 15:26'
}
RtBatchingExample class >> browser [

	| window |
	window := (ToolBuilder build: (Browser new setClass: Morph selector: #drawOn:)) position: 0 @ 0.
	^ self morph: window
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 6/17/2021 15:30'
}
RtBatchingExample class >> chineseCheckers [

	| morph |
	morph := (ChineseCheckers new teams: #(2 5 ) autoPlay: {true. true}) openInWorld; position: 0@0.
	^ self morph: morph
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 6/17/2021 15:09'
}
RtBatchingExample class >> drawReference [

	^ self morph: RtDrawReferenceMorph new
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 6/17/2021 15:08'
}
RtBatchingExample class >> morph: aMorph [

	^ self new
		morph: aMorph;
		run;
		yourself
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 6/17/2021 15:09'
}
RtBatchingExample class >> world [

	^ self morph: ActiveWorld
]

{
	#category : #input,
	#'squeak_changestamp' : 'stlu 6/30/2021 09:43'
}
RtBatchingExample >> activeMouseButtons [

	| buttonMask |
	buttonMask := 0.
	(window getMouseButton: GLFW_MOUSE_BUTTON_LEFT) = GLFW_PRESS ifTrue: [
		buttonMask := buttonMask bitOr: MouseEvent redButton].
	(window getMouseButton: GLFW_MOUSE_BUTTON_RIGHT) = GLFW_PRESS ifTrue: [
		buttonMask := buttonMask bitOr: MouseEvent yellowButton].
	(window getMouseButton: GLFW_MOUSE_BUTTON_MIDDLE) = GLFW_PRESS ifTrue: [
		buttonMask := buttonMask bitOr: MouseEvent blueButton].
	^ buttonMask
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 6/17/2021 15:32'
}
RtBatchingExample >> initialWindowExtent [

	^ morph extent
]

{
	#category : #input,
	#'squeak_changestamp' : 'stlu 6/30/2021 10:54'
}
RtBatchingExample >> key: key scanCode: scanCode changedTo: state with: mods [

	"| type stamp activeButtons |
	type := state caseOf: {
		[GLFW_RELEASE] -> [#keyUp].
		[GLFW_PRESS] -> [#keyDown].
		[GLFW_REPEAT] -> [#keystroke]}.
	activeButtons := self activeMouseButtons.
	stamp := Time millisecondClockValue.
	
	Project current addDeferredUIMessage: [
		| event hand |
		hand := self currentHand.
		event := KeyboardEvent new
					setType: type
					buttons: activeButtons
					position: hand position
					keyValue: scanCode
					keyCode: scanCode
					hand: hand
					stamp: stamp.
		hand handleEvent: event]."
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/17/2021 15:32'
}
RtBatchingExample >> morph: aMorph [

	morph := aMorph.
]

{
	#category : #input,
	#'squeak_changestamp' : 'stlu 6/30/2021 09:52'
}
RtBatchingExample >> mouseButton: button changedTo: state with: modifierKeys [

	| event type position stamp changedButton activeButtons |
	position := window cursorPosition floor.
	type := state caseOf: {
		[GLFW_PRESS] -> [#mouseDown].
		[GLFW_RELEASE] -> [#mouseUp]}.
	changedButton := button caseOf: {
		[GLFW_MOUSE_BUTTON_LEFT] -> [MouseEvent redButton].
		[GLFW_MOUSE_BUTTON_RIGHT] -> [MouseEvent yellowButton].
		[GLFW_MOUSE_BUTTON_MIDDLE] -> [MouseEvent blueButton]}.
	activeButtons := self activeMouseButtons.
	stamp := Time millisecondClockValue.
	event := MouseButtonEvent new.
	
	Project current addDeferredUIMessage: [
		| hand |
		hand := self currentHand.
		event
			setType: type
			position: position
			which: changedButton
			buttons: activeButtons
			hand: hand
			stamp: stamp.
		hand handleEvent: event].
]

{
	#category : #input,
	#'squeak_changestamp' : 'stlu 6/30/2021 10:07'
}
RtBatchingExample >> mousePositionChangedTo: aPoint [

	| type position stamp activeButtons |
	type := #mouseMove.
	position := aPoint floor.
	activeButtons := self activeMouseButtons.
	stamp := Time millisecondClockValue.
	
	Project current addDeferredUIMessage: [
		| event hand |
		hand := self currentHand.
		event := MouseMoveEvent new
					setType: type
					startPoint: hand position
					endPoint: position
					trail: { hand position . position }
					buttons: activeButtons
					hand: hand
					stamp: stamp.
		hand handleEvent: event].
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/20/2021 21:47'
}
RtBatchingExample >> picture [

	^ picture
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/17/2021 15:32'
}
RtBatchingExample >> projectionMatrix [

	^ Matrix4x4
		ortho: morph bounds
		near: 0 far: -100000
]

{
	#category : #running,
	#'squeak_changestamp' : 'stlu 6/17/2021 15:33'
}
RtBatchingExample >> render [

	renderer projectionMatrix: self projectionMatrix.
	picture := PicPictureCanvas new fullDraw: morph; getPicture.
	renderer render: picture.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/20/2021 21:46'
}
RtBatchingExample >> renderer [

	^ renderer
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/20/2021 21:46'
}
RtBatchingExample >> renderer: anObject [

	renderer := anObject
]

{
	#category : #running,
	#'squeak_changestamp' : 'stlu 6/21/2021 17:06'
}
RtBatchingExample >> setUp [

	renderer := RtBatchingRenderer new.
]
