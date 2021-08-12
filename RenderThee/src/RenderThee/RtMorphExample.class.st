Class {
	#name : #RtMorphExample,
	#superclass : #LOGLTemplate,
	#instVars : [
		'morph',
		'picture',
		'keyCodeTable',
		'pictureUpdateTimes'
	],
	#pools : [
		'EventSensorConstants'
	],
	#category : #'RenderThee-Examples'
}

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 6/17/2021 15:26'
}
RtMorphExample class >> browser [

	| window |
	window := (ToolBuilder build: (Browser new setClass: Morph selector: #drawOn:)) position: 0 @ 0.
	^ self morph: window
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 6/17/2021 15:30'
}
RtMorphExample class >> chineseCheckers [

	| morph |
	morph := (ChineseCheckers new teams: #(2 5 ) autoPlay: {true. true}) openInWorld; position: 0@0.
	^ self morph: morph
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 7/8/2021 10:18'
}
RtMorphExample class >> drawReference [

	^ self morph: (RtDrawReferenceMorph new position: 0@0)
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 6/17/2021 15:08'
}
RtMorphExample class >> morph: aMorph [

	^ self new
		morph: aMorph;
		run;
		yourself
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 6/17/2021 15:09'
}
RtMorphExample class >> world [

	^ self morph: ActiveWorld
]

{
	#category : #input,
	#'squeak_changestamp' : 'stlu 7/2/2021 19:05'
}
RtMorphExample >> activeModifierKeys [

	^ 0 "can't be polled. should we remember it?"
]

{
	#category : #input,
	#'squeak_changestamp' : 'stlu 7/2/2021 18:57'
}
RtMorphExample >> activeMouseButtons [

	| buttonMask |
	buttonMask := 0.
	(window getMouseButton: GLFW_MOUSE_BUTTON_LEFT) = GLFW_PRESS ifTrue: [
		buttonMask := buttonMask bitOr: RedButtonBit].
	(window getMouseButton: GLFW_MOUSE_BUTTON_RIGHT) = GLFW_PRESS ifTrue: [
		buttonMask := buttonMask bitOr: YellowButtonBit].
	(window getMouseButton: GLFW_MOUSE_BUTTON_MIDDLE) = GLFW_PRESS ifTrue: [
		buttonMask := buttonMask bitOr: BlueButtonBit].
	^ buttonMask
]

{
	#category : #input,
	#'squeak_changestamp' : 'stlu 7/2/2021 19:27'
}
RtMorphExample >> convertModifierKeys: modifierKeys [

	| mask |
	mask := 0.
	(modifierKeys anyMask: GLFW_MOD_SHIFT) ifTrue: [
		mask := mask bitOr: ShiftKeyBit].
	(modifierKeys anyMask: GLFW_MOD_CONTROL) ifTrue: [
		mask := mask bitOr: CtrlKeyBit].
	(modifierKeys anyMask: GLFW_MOD_ALT) ifTrue: [
		mask := mask bitOr: CommandKeyBit].
	^ mask
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 6/17/2021 15:32'
}
RtMorphExample >> initialWindowExtent [

	^ morph extent
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 8/11/2021 17:17'
}
RtMorphExample >> initialize [

	super initialize.
	pictureUpdateTimes := LOGLFrameHistory new: 30.
]

{
	#category : #input,
	#'squeak_changestamp' : 'stlu 7/3/2021 18:12'
}
RtMorphExample >> key: key scanCode: scanCode changedTo: state with: mods [

	| eventBuffer type char charCode modifierBits |
	type := state caseOf: {
		[GLFW_RELEASE] -> [EventKeyUp].
		[GLFW_PRESS] -> [EventKeyDown].
		[GLFW_REPEAT] -> [^ self].}.
	FileStream stdout nextPutAll: (scanCode printStringBase: 16); cr; flush.
	char := (self keyCodeTable at: key) ifNil: [^ self].
	charCode := char asInteger.
	modifierBits := self convertModifierKeys: mods.
	
	eventBuffer := {
		EventTypeKeyboard.
		0.
		charCode.
		type.
		modifierBits.
		char codePoint.
		0.
		1}.
	EventSensor default queueEvent: eventBuffer.
	
	(type = EventKeyUp and: [charCode < 32]) ifTrue: [
		"Squeak expects keystroke events for these keys, while GLFW does not report them as such."
		eventBuffer := {
			EventTypeKeyboard.
			0.
			charCode.
			EventKeyChar.
			modifierBits.
			char codePoint.
			0.
			1}.
		EventSensor default queueEvent: eventBuffer].
]

{
	#category : #input,
	#'squeak_changestamp' : 'stlu 7/2/2021 23:35'
}
RtMorphExample >> keyCodeTable [

	^ keyCodeTable ifNil: [
		keyCodeTable := Dictionary newFromPairs: {
			GLFW_KEY_UNKNOWN. nil.
			GLFW_KEY_SPACE. Character space.
			GLFW_KEY_APOSTROPHE. $'.
			GLFW_KEY_COMMA. $,.
			GLFW_KEY_MINUS. $-.
			GLFW_KEY_PERIOD. $..
			GLFW_KEY_SLASH. $/.
			GLFW_KEY_0. $0.
			GLFW_KEY_1. $1.
			GLFW_KEY_2. $2.
			GLFW_KEY_3. $3.
			GLFW_KEY_4. $4.
			GLFW_KEY_5. $5.
			GLFW_KEY_6. $6.
			GLFW_KEY_7. $7.
			GLFW_KEY_8. $8.
			GLFW_KEY_9. $9.
			GLFW_KEY_SEMICOLON. $;.
			GLFW_KEY_EQUAL. $=.
			GLFW_KEY_A. $A.
			GLFW_KEY_B. $B.
			GLFW_KEY_C. $C.
			GLFW_KEY_D. $D.
			GLFW_KEY_E. $E.
			GLFW_KEY_F. $F.
			GLFW_KEY_G. $G.
			GLFW_KEY_H. $H.
			GLFW_KEY_I. $I.
			GLFW_KEY_J. $J.
			GLFW_KEY_K. $K.
			GLFW_KEY_L. $L.
			GLFW_KEY_M. $M.
			GLFW_KEY_N. $N.
			GLFW_KEY_O. $O.
			GLFW_KEY_P. $P.
			GLFW_KEY_Q. $Q.
			GLFW_KEY_R. $R.
			GLFW_KEY_S. $S.
			GLFW_KEY_T. $T.
			GLFW_KEY_U. $U.
			GLFW_KEY_V. $V.
			GLFW_KEY_W. $W.
			GLFW_KEY_X. $X.
			GLFW_KEY_Y. $Y.
			GLFW_KEY_Z. $Z.
			GLFW_KEY_LEFT_BRACKET. $[.
			GLFW_KEY_BACKSLASH. $\.
			GLFW_KEY_RIGHT_BRACKET. $].
			GLFW_KEY_GRAVE_ACCENT. $`.
			GLFW_KEY_WORLD_1. nil.
			GLFW_KEY_WORLD_2. nil.
			GLFW_KEY_ESCAPE. Character escape.
			GLFW_KEY_ENTER. Character enter.
			GLFW_KEY_TAB. Character tab.
			GLFW_KEY_BACKSPACE. Character backspace.
			GLFW_KEY_INSERT. Character insert.
			GLFW_KEY_DELETE. Character delete.
			GLFW_KEY_RIGHT. Character arrowRight.
			GLFW_KEY_LEFT. Character arrowLeft.
			GLFW_KEY_DOWN. Character arrowDown.
			GLFW_KEY_UP. Character arrowUp.
			GLFW_KEY_PAGE_UP. Character pageUp.
			GLFW_KEY_PAGE_DOWN. Character pageDown.
			GLFW_KEY_HOME. Character home.
			GLFW_KEY_END. Character end.
			GLFW_KEY_CAPS_LOCK. #capsLock.
			GLFW_KEY_SCROLL_LOCK. nil.
			GLFW_KEY_NUM_LOCK. nil.
			GLFW_KEY_PRINT_SCREEN. nil.
			GLFW_KEY_PAUSE. nil.
			GLFW_KEY_F1. nil.
			GLFW_KEY_F2. nil.
			GLFW_KEY_F3. nil.
			GLFW_KEY_F4. nil.
			GLFW_KEY_F5. nil.
			GLFW_KEY_F6. nil.
			GLFW_KEY_F7. nil.
			GLFW_KEY_F8. nil.
			GLFW_KEY_F9. nil.
			GLFW_KEY_F10. nil.
			GLFW_KEY_F11. nil.
			GLFW_KEY_F12. nil.
			GLFW_KEY_F13. nil.
			GLFW_KEY_F14. nil.
			GLFW_KEY_F15. nil.
			GLFW_KEY_F16. nil.
			GLFW_KEY_F17. nil.
			GLFW_KEY_F18. nil.
			GLFW_KEY_F19. nil.
			GLFW_KEY_F20. nil.
			GLFW_KEY_F21. nil.
			GLFW_KEY_F22. nil.
			GLFW_KEY_F23. nil.
			GLFW_KEY_F24. nil.
			GLFW_KEY_F25. nil.
			GLFW_KEY_KP_0. $0.
			GLFW_KEY_KP_1. $1.
			GLFW_KEY_KP_2. $2.
			GLFW_KEY_KP_3. $3.
			GLFW_KEY_KP_4. $4.
			GLFW_KEY_KP_5. $5.
			GLFW_KEY_KP_6. $6.
			GLFW_KEY_KP_7. $7.
			GLFW_KEY_KP_8. $8.
			GLFW_KEY_KP_9. $9.
			GLFW_KEY_KP_DECIMAL. $,.
			GLFW_KEY_KP_DIVIDE. $/.
			GLFW_KEY_KP_MULTIPLY. $*.
			GLFW_KEY_KP_SUBTRACT. $-.
			GLFW_KEY_KP_ADD. $+.
			GLFW_KEY_KP_ENTER. Character enter.
			GLFW_KEY_KP_EQUAL. $=.
			GLFW_KEY_LEFT_SHIFT. nil.
			GLFW_KEY_LEFT_CONTROL. nil.
			GLFW_KEY_LEFT_ALT. nil.
			GLFW_KEY_LEFT_SUPER. nil.
			GLFW_KEY_RIGHT_SHIFT. nil.
			GLFW_KEY_RIGHT_CONTROL. nil.
			GLFW_KEY_RIGHT_ALT. nil.
			GLFW_KEY_RIGHT_SUPER. nil.
			GLFW_KEY_MENU. nil }]
]

{
	#category : #input,
	#'squeak_changestamp' : 'stlu 7/2/2021 23:54'
}
RtMorphExample >> keyStroke: codePoint [

	| eventBuffer |
	eventBuffer := {
		EventTypeKeyboard.
		0.
		codePoint.
		EventKeyChar.
		0. "mods"
		codePoint.
		0.
		1}.
	EventSensor default queueEvent: eventBuffer.
]

{
	#category : #input,
	#'squeak_changestamp' : 'stlu 7/3/2021 10:19'
}
RtMorphExample >> mapMousePosition: aPoint [

	^ aPoint
		scaleFrom: (0@0 extent: window extent)
		to: morph bounds
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/11/2021 17:00'
}
RtMorphExample >> morph: aMorph [

	morph := aMorph.
	morph allMorphsDo: [:each | each picture: nil].
]

{
	#category : #input,
	#'squeak_changestamp' : 'stlu 7/3/2021 18:56'
}
RtMorphExample >> mouseButton: button changedTo: state with: modifierKeys [

	| position eventBuffer |
	position := self mapMousePosition: window cursorPosition.
	eventBuffer := {
		EventTypeMouse.
		0.
		position x.
		position y.
		self activeMouseButtons.
		self convertModifierKeys: modifierKeys.
		0.
		1 }.
	EventSensor default processEvent: eventBuffer.
]

{
	#category : #input,
	#'squeak_changestamp' : 'stlu 7/3/2021 18:57'
}
RtMorphExample >> mousePositionChangedTo: aPoint [

	| position eventBuffer |
	position := self mapMousePosition: aPoint.
	eventBuffer := {
		EventTypeMouse.
		0.
		position x.
		position y.
		self activeMouseButtons.
		self activeModifierKeys.
		0.
		1 }.
	EventSensor default processEvent: eventBuffer.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/20/2021 21:47'
}
RtMorphExample >> picture [

	^ picture
]

{
	#category : #'window title',
	#'squeak_changestamp' : 'stlu 8/11/2021 17:16'
}
RtMorphExample >> printWindowTitleOn: aStream [

	super printWindowTitleOn: aStream.
	pictureUpdateTimes ifNotEmpty: [
		aStream
			nextPutAll: ' | Pic: ';
			nextPutAll: (pictureUpdateTimes average printShowingDecimalPlaces: 3);
			nextPutAll: 'us'].
]

{
	#category : #running,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:24'
}
RtMorphExample >> updatePicture [

	| patcher elapsed |
	patcher := PicPatcherCanvas new.
	patcher invalidationStamp: numFrames.
	elapsed := Time microsecondsToRun: [
		patcher fullDrawMorph: morph].
	pictureUpdateTimes add: elapsed.
	picture := morph picture.
]
