Class {
	#name : #RtMorphExample,
	#superclass : #LOGLTemplate,
	#instVars : [
		'picture',
		'pictureUpdateTimes',
		'stepTimes',
		'inputTimes',
		'keyEnumToVirtualKeyTable',
		'virtualKeyToKeyCodeTable',
		'shouldUpdateMorph',
		'world',
		'shouldShowDamageRectangles'
	],
	#pools : [
		'EventSensorConstants'
	],
	#category : #'RenderThee-Examples'
}

{
	#category : #examples,
	#'squeak_changestamp' : 'stlu 11/8/2021 17:04'
}
RtMorphExample class >> benchWorld [

	^ self world: self createBenchWorld
]

{
	#category : #examples,
	#'squeak_changestamp' : 'stlu 5/2/2022 11:50'
}
RtMorphExample class >> blueMorph [

	^ self morph: (Morph new position: 0@0)
]

{
	#category : #examples,
	#'squeak_changestamp' : 'stlu 11/8/2021 16:08'
}
RtMorphExample class >> bouncingAtoms [

	^ self bouncingAtoms: 500
]

{
	#category : #examples,
	#'squeak_changestamp' : 'stlu 6/27/2022 13:43'
}
RtMorphExample class >> bouncingAtoms: numAtoms [

	^ self morph: (self createBouncingAtomsMorph: numAtoms)
]

{
	#category : #examples,
	#'squeak_changestamp' : 'stlu 6/17/2021 15:26'
}
RtMorphExample class >> browser [

	| window |
	window := (ToolBuilder build: (Browser new setClass: Morph selector: #drawOn:)) position: 0 @ 0.
	^ self morph: window
]

{
	#category : #examples,
	#'squeak_changestamp' : 'stlu 6/17/2021 15:30'
}
RtMorphExample class >> chineseCheckers [

	| morph |
	morph := (ChineseCheckers new teams: #(2 5 ) autoPlay: {true. true}) openInWorld; position: 0@0.
	^ self morph: morph
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/8/2021 17:09'
}
RtMorphExample class >> createBenchWorld [

	| w1 w10 w11 w12 w13 w14 w15 w16 w2 w3 w4 w5 w6 w7 w8 w9 world |
	world := (PasteUpMorph newWorldForProject: nil)
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		extent: 1600@900;
		layoutFrame: LayoutFrame fullFrame;
		fullBounds;
		yourself.

	w1 := (ToolSet browse: Morph selector: #drawOn:) dependents detect: [:ea | ea isSystemWindow].
	w2 := ToolSet
			browseMessageSet: (SystemNavigation default allCallsOn: #negated)
			name: 'Senders' translated autoSelect: 'negated'.
	w3 := (Workspace new contents: '3+4 "Select and hit [CMD]+[P]."') openLabel: 'Workspace'.
	w4 := (ToolSet browse: FormCanvas selector: #transformBy:clippingTo:during:smoothing:) dependents detect: [:ea | ea isSystemWindow].
	w5 := ToolSet
			browseMessageSet: (SystemNavigation default allCallsOn: #OrderedCollection)
			name: 'Users of OrderedCollection' autoSelect: 'OrderedCollection'.
	w6 := ToolBuilder open: MCWorkingCopyBrowser new.
	w7 := ToolSet explore: w1.
	w8 := ToolSet inspect: w5 model messageList.
	w9 := (ToolSet browse: Dictionary selector: #scanFor:) dependents detect: [:ea | ea isSystemWindow].
	w10 := (ToolSet browse: SequenceableCollection selector: #do:) dependents detect: [:ea | ea isSystemWindow].
	w11 := (ToolSet browse: Float selector: #printOn:base:) dependents detect: [:ea | ea isSystemWindow].
	w12 := (ToolSet browse: Point selector: #normalized) dependents detect: [:ea | ea isSystemWindow].
	w13 := (ToolSet browse: Rectangle selector: #area) dependents detect: [:ea | ea isSystemWindow].
	w14 := (ToolSet browse: Color selector: #alpha:) dependents detect: [:ea | ea isSystemWindow].
	w15 := (ToolSet browse: Boolean selector: #ifTrue:ifFalse:) dependents detect: [:ea | ea isSystemWindow].
	w16 := (ToolSet browse: ProtoObject selector: #identityHash) dependents detect: [:ea | ea isSystemWindow].


	{w1. w2. w3 . w4 . w5 . w6 . w7 . w8 . w9 . w10 . w11 . w12 . w13 . w14 . w15 . w16} do: [:ea |
		ea openInWorld: world].
	
	^ world
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/27/2022 13:42'
}
RtMorphExample class >> createBouncingAtomsMorph: numAtoms [

	| group baMorph |
	baMorph := BouncingAtomsMorph new
		bounds: (0@0 extent: Display extent);
		removeAllMorphs;
		addAtoms: numAtoms;
		yourself.
	
	group := Morph new
		color: Color transparent;
		extent: baMorph extent;
		addMorph: baMorph;
		yourself.
	
	{ RtFrameRateMorph. RtGCPressureMorph. RtIdleTimeMorph } inject: 0 into: [:top :cls |
		cls new
			in: [:m | group addMorph: m];
			setToAdhereToEdge: #right;
			color: Color black;
			retentionDuration: 2e6;
			top: top;
			lock;
			bottom].
	
	^ group
]

{
	#category : #examples,
	#'squeak_changestamp' : 'stlu 7/8/2021 10:18'
}
RtMorphExample class >> drawReference [

	^ self morph: (RtDrawReferenceMorph new position: 0@0)
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 6/27/2022 13:23'
}
RtMorphExample class >> morph: aMorph [

	^ self morphs: { aMorph }
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 6/27/2022 13:23'
}
RtMorphExample class >> morphs: collectionOfMorphs [

	^ self morphs: collectionOfMorphs extent: collectionOfMorphs first extent
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 6/27/2022 13:22'
}
RtMorphExample class >> morphs: collectionOfMorphs extent: anExtent [

	| world |
	world := PasteUpMorph newWorldForProject: nil.
	world extent: anExtent.
	collectionOfMorphs do: [:each |
		each openInWorld: world].
	^ self world: world
]

{
	#category : #examples,
	#'squeak_changestamp' : 'stlu 6/27/2022 15:04'
}
RtMorphExample class >> movingBenchWorld [

	| world |
	world := self createBenchWorld.
	world submorphs do: [:each |
		each startDemoMove].
	^ self world: world
]

{
	#category : #examples,
	#'squeak_changestamp' : 'stlu 11/12/2021 15:19'
}
RtMorphExample class >> spaceGame [

	^ self morph: SgSpaceGame new
]

{
	#category : #examples,
	#'squeak_changestamp' : 'stlu 11/8/2021 16:00'
}
RtMorphExample class >> world [

	^ self world: ActiveWorld
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 1/3/2022 17:34'
}
RtMorphExample class >> world: aMorph [

	aMorph fullRepaintNeeded.
	^ self new
		world: aMorph;
		run;
		yourself
]

{
	#category : #input,
	#'squeak_changestamp' : 'stlu 8/30/2021 16:52'
}
RtMorphExample >> activeModifierKeys [

	| bits |
	bits := 0.
	((window getKey: GLFW_KEY_LEFT_SHIFT) = GLFW_PRESS
		or: [(window getKey: GLFW_KEY_RIGHT_SHIFT) = GLFW_PRESS]) ifTrue: [
			bits := bits bitOr: ShiftKeyBit].
	((window getKey: GLFW_KEY_LEFT_CONTROL) = GLFW_PRESS
		or: [(window getKey: GLFW_KEY_RIGHT_CONTROL) = GLFW_PRESS]) ifTrue: [
			bits := bits bitOr: CtrlKeyBit].
	((window getKey: GLFW_KEY_LEFT_ALT) = GLFW_PRESS
		or: [(window getKey: GLFW_KEY_RIGHT_ALT) = GLFW_PRESS]) ifTrue: [
			bits := bits bitOr: CommandKeyBit].
	^ bits
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
	#category : #damage,
	#'squeak_changestamp' : 'stlu 12/10/2021 16:30'
}
RtMorphExample >> damageRecorder [

	^ world worldState damageRecorder
]

{
	#category : #damage,
	#'squeak_changestamp' : 'stlu 12/10/2021 16:31'
}
RtMorphExample >> damageRectangles [

	^ self damageRecorder invalidRectsFullBounds: world bounds
]

{
	#category : #running,
	#'squeak_changestamp' : 'stlu 6/27/2022 14:11'
}
RtMorphExample >> doSteps [

	| startTime |
	startTime := Time utcMicrosecondClock.
	self shouldStepMorph ifTrue: [world runStepMethods].
	stepTimes add: Time utcMicrosecondClock - startTime.
]

{
	#category : #running,
	#'squeak_changestamp' : 'stlu 5/17/2022 11:39'
}
RtMorphExample >> drawPictureOn: aCanvas [

	(PicCanvasReplay on: aCanvas)
		visitAll: picture beginNode.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 11/8/2021 15:59'
}
RtMorphExample >> initialWindowExtent [

	^ world extent
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 6/27/2022 14:10'
}
RtMorphExample >> initialize [

	super initialize.
	pictureUpdateTimes := RingBuffer new: 120.
	stepTimes := RingBuffer new: 120.
	inputTimes := RingBuffer new: 120.
	shouldUpdateMorph := true.
	shouldShowDamageRectangles := false.
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 1/3/2022 17:35'
}
RtMorphExample >> isModalByDefault [

	^ true
]

{
	#category : #input,
	#'squeak_changestamp' : 'stlu 5/30/2022 17:36'
}
RtMorphExample >> key: keyEnum scanCode: scanCode changedTo: state with: mods [

	| eventBuffer type keyName keyCode modifierBits virtualKey isShiftPressed codePoint |
	"true ifTrue: [^ self]."
	super key: keyEnum scanCode: scanCode changedTo: state with: mods.

	(GLFW numberOfFunctionKey: keyEnum) ifNotNil: [:fNumber |
		state = GLFW_RELEASE ifTrue: [
			fNumber = 10 ifTrue: [self triggerDebugAction].
			fNumber = 11 ifTrue: [self toggleMorphUpdates].
			fNumber = 12 ifTrue: [self toggleDamageVisualization]]].
	
	isShiftPressed := mods anyMask: ShiftKeyBit.
	type := state caseOf: {
		[GLFW_RELEASE] -> [EventKeyUp].
		[GLFW_PRESS] -> [EventKeyDown].
		[GLFW_REPEAT] -> [^ self]}.
	keyName := GLFW getKeyName: keyEnum with: scanCode.
	virtualKey := (keyName notNil and: [keyName size = 1])
		ifTrue: [keyName first]
		ifFalse: [self keyEnumToVirtualKeyTable at: keyEnum ifAbsent: [^ self]].
	virtualKey isCharacter
		ifTrue: [
			virtualKey := isShiftPressed
				ifTrue: [virtualKey asUppercase]
				ifFalse: [virtualKey asLowercase].
			keyCode := codePoint := virtualKey asInteger]
		ifFalse: [
			codePoint := 0.
			keyCode := self virtualKeyToKeyCodeTable at: virtualKey ifAbsent: [^ self]].
	modifierBits := self convertModifierKeys: mods.
	
	eventBuffer := {
		EventTypeKeyboard.
		EventSensor default eventTimeNow.
		keyCode.
		type.
		modifierBits.
		codePoint.
		0.
		1}.
	EventSensor default processEvent: eventBuffer.
	
	"Some key downs don't produce key strokes
	since they do not actually map to unicode characters."
	type = EventKeyDown ifTrue: [
		"Figure out whether the key is printable to avoid doubling key strokes.
		This is incredibly brittle (especially with non-latin keyboard layouts)."
		virtualKey isCharacter ifFalse: [^ self].
		((GLFW isPrintableKey: keyEnum)
			and: [mods = 0 or: [mods = 1 and: [isShiftPressed]]]) ifTrue: [^ self].
		keyEnum = GLFW_KEY_SPACE ifTrue: [^ self].
		
		eventBuffer := {
			EventTypeKeyboard.
			EventSensor default eventTimeNow.
			keyCode.
			EventKeyChar.
			modifierBits.
			codePoint.
			0.
			1}.
		EventSensor default processEvent: eventBuffer].
]

{
	#category : #input,
	#'squeak_changestamp' : 'stlu 9/17/2021 12:42'
}
RtMorphExample >> keyEnumToVirtualKeyTable [

	^ keyEnumToVirtualKeyTable ifNil: [
		keyEnumToVirtualKeyTable := Dictionary newFromPairs: {
			GLFW_KEY_UNKNOWN. nil.
			GLFW_KEY_SPACE. Character space.
			GLFW_KEY_APOSTROPHE. $'.
			GLFW_KEY_COMMA. #squeakComma.
			GLFW_KEY_MINUS. $-.
			GLFW_KEY_PERIOD. #squeakPeriod.
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
			GLFW_KEY_ENTER. Character return.
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
			GLFW_KEY_SCROLL_LOCK. #'VK_SCROLL'.
			GLFW_KEY_NUM_LOCK. #'VK_NUMLOCK'.
			GLFW_KEY_PRINT_SCREEN. #'VK_SNAPSHOT'.
			GLFW_KEY_PAUSE. #'VK_PAUSE'.
			GLFW_KEY_F1. #F1.
			GLFW_KEY_F2. #F1.
			GLFW_KEY_F3. #F3.
			GLFW_KEY_F4. #F4.
			GLFW_KEY_F5. #F5.
			GLFW_KEY_F6. #F6.
			GLFW_KEY_F7. #F7.
			GLFW_KEY_F8. #F8.
			GLFW_KEY_F9. #F9.
			GLFW_KEY_F10. #F10.
			GLFW_KEY_F11. #F11.
			GLFW_KEY_F12. #F12.
			GLFW_KEY_F13. #F13.
			GLFW_KEY_F14. #F14.
			GLFW_KEY_F15. #F15.
			GLFW_KEY_F16. #F16.
			GLFW_KEY_F17. #F17.
			GLFW_KEY_F18. #F18.
			GLFW_KEY_F19. #F19.
			GLFW_KEY_F20. #F20.
			GLFW_KEY_F21. #F21.
			GLFW_KEY_F22. #F22.
			GLFW_KEY_F23. #F23.
			GLFW_KEY_F24. #F24.
			GLFW_KEY_F25. #F25.
			GLFW_KEY_KP_0. #num0.
			GLFW_KEY_KP_1. #num1.
			GLFW_KEY_KP_2. #num2.
			GLFW_KEY_KP_3. #num3.
			GLFW_KEY_KP_4. #num4.
			GLFW_KEY_KP_5. #num5.
			GLFW_KEY_KP_6. #num6.
			GLFW_KEY_KP_7. #num7.
			GLFW_KEY_KP_8. #num8.
			GLFW_KEY_KP_9. #num9.
			GLFW_KEY_KP_DECIMAL. #'VK_SEPARATOR'.
			GLFW_KEY_KP_DIVIDE. #numDiv.
			GLFW_KEY_KP_MULTIPLY. #numMul.
			GLFW_KEY_KP_SUBTRACT. #numSub.
			GLFW_KEY_KP_ADD. #numAdd.
			GLFW_KEY_KP_ENTER. Character enter.
			GLFW_KEY_KP_EQUAL. $=.
			GLFW_KEY_LEFT_SHIFT. #shift.
			GLFW_KEY_LEFT_CONTROL. EventSensor mapControlKeysToCommandKeys ifTrue: [#command] ifFalse: [#control].
			GLFW_KEY_LEFT_ALT. EventSensor mapAltKeysToOptionKeys ifTrue: [#option] ifFalse: [#command].
			GLFW_KEY_LEFT_SUPER. nil.
			GLFW_KEY_RIGHT_SHIFT. #shift.
			GLFW_KEY_RIGHT_CONTROL. EventSensor mapControlKeysToCommandKeys ifTrue: [#command] ifFalse: [#control].
			GLFW_KEY_RIGHT_ALT. EventSensor mapAltKeysToOptionKeys ifTrue: [#option] ifFalse: [#command].
			GLFW_KEY_RIGHT_SUPER. nil.
			GLFW_KEY_MENU. nil.
		}]
]

{
	#category : #input,
	#'squeak_changestamp' : 'stlu 5/30/2022 17:35'
}
RtMorphExample >> keyStroke: codePoint [

	| eventBuffer |
	eventBuffer := {
		EventTypeKeyboard.
		EventSensor default eventTimeNow.
		codePoint.
		EventKeyChar.
		self activeModifierKeys.
		codePoint.
		0.
		1}.
	EventSensor default processEvent: eventBuffer.
]

{
	#category : #input,
	#'squeak_changestamp' : 'stlu 11/8/2021 15:59'
}
RtMorphExample >> mapMousePosition: aPoint [

	^ aPoint
		scaleFrom: (0@0 extent: window extent)
		to: world bounds
]

{
	#category : #input,
	#'squeak_changestamp' : 'stlu 5/30/2022 17:35'
}
RtMorphExample >> mouseButton: button changedTo: state with: modifierKeys [

	| position eventBuffer |
	position := self mapMousePosition: window cursorPosition.
	eventBuffer := {
		EventTypeMouse.
		EventSensor default eventTimeNow.
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
	#'squeak_changestamp' : 'stlu 5/30/2022 17:35'
}
RtMorphExample >> mousePositionChangedTo: aPoint [

	| position eventBuffer |
	position := self mapMousePosition: aPoint.
	eventBuffer := {
		EventTypeMouse.
		EventSensor default eventTimeNow.
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
	#'squeak_changestamp' : 'stlu 6/25/2022 11:40'
}
RtMorphExample >> printWindowTitleOn: aStream [

	super printWindowTitleOn: aStream.
	pictureUpdateTimes ifNotEmpty: [
		aStream nextPutAll: ' | Pic: '.
		pictureUpdateTimes average printOn: aStream showingDecimalPlaces: 2.
		aStream nextPutAll: ' - '.
		pictureUpdateTimes max printOn: aStream showingDecimalPlaces: 2.
		aStream nextPutAll: 'us'].
]

{
	#category : #running,
	#'squeak_changestamp' : 'stlu 6/27/2022 14:12'
}
RtMorphExample >> processUserInputEvents [

	| startTime |
	startTime := Time utcMicrosecondClock.
	world worldState processUserInputEvents.
	inputTimes add: Time utcMicrosecondClock - startTime.
]

{
	#category : #running,
	#'squeak_changestamp' : 'stlu 9/6/2021 15:14'
}
RtMorphExample >> render [

	self subclassResponsibility.
]

{
	#category : #logging,
	#'squeak_changestamp' : 'stlu 5/2/2022 20:14'
}
RtMorphExample >> saveLogs [

	| filename |
	filename := (Time utcMicrosecondClock // 1e6) asString , '_' , self class name , '.csv'.
	FileDirectory default newFileNamed: filename do: [:file |
		self saveLogsOn: file].
]

{
	#category : #logging,
	#'squeak_changestamp' : 'stlu 5/2/2022 20:40'
}
RtMorphExample >> saveLogsOn: aStream [

	aStream nextPutAll: 'cycle,type,time'.
	aStream crlf.
	frameTimes size to: 1 by: -1 do: [:cycle || x | 
		x := frameTimes size - cycle + 1.
		{
			"'frame'. [(frameTimes at: cycle) / 1e3 printOn: aStream showingDecimalPlaces: 3.]."
			'batching'. [(renderTimes at: cycle) / 1e3 printOn: aStream showingDecimalPlaces: 3.].
			'picture'. [(pictureUpdateTimes at: cycle) / 1e3 printOn: aStream showingDecimalPlaces: 3.].
			'GPU'. [(gpuTimes at: cycle) / 1e6 printOn: aStream showingDecimalPlaces: 3.].
			'GC'. [(gcHistory at: cycle * 2) - (gcHistory at: cycle * 2 + 2) printOn: aStream.].
		} groupsOf: 2 atATimeDo: [:type :block |
			aStream
				print: x;
				nextPut: $,;
				nextPutAll: type;
				nextPut: $,.
			block value.
			aStream crlf]].
]

{
	#category : #input,
	#'squeak_changestamp' : 'stlu 5/30/2022 17:35'
}
RtMorphExample >> scrolledBy: aPoint [

	| delta eventBuffer |
	delta := (aPoint * MouseWheelEvent scrollUnitsPerMouseWheelNotch) ceiling.
	eventBuffer := {
		EventTypeMouseWheel.
		EventSensor default eventTimeNow.
		delta x.
		delta y.
		self activeMouseButtons.
		self activeModifierKeys.
		0.
		1 }.
	EventSensor default processEvent: eventBuffer.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 12/7/2021 14:15'
}
RtMorphExample >> shouldShowDamageRectangles [

	^ shouldShowDamageRectangles
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 12/7/2021 14:15'
}
RtMorphExample >> shouldShowDamageRectangles: anObject [

	shouldShowDamageRectangles := anObject.
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 11/8/2021 16:27'
}
RtMorphExample >> shouldStepMorph [

	^ world ~~ Project current world or: [self isModal]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 10/3/2021 20:30'
}
RtMorphExample >> shouldUpdateMorph [

	^ shouldUpdateMorph
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 10/3/2021 20:31'
}
RtMorphExample >> shouldUpdateMorph: aBoolean [

	shouldUpdateMorph := aBoolean.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 12/7/2021 14:17'
}
RtMorphExample >> toggleDamageVisualization [

	self shouldShowDamageRectangles: self shouldShowDamageRectangles not.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 10/3/2021 20:44'
}
RtMorphExample >> toggleMorphUpdates [

	self shouldUpdateMorph: self shouldUpdateMorph not.
]

{
	#category : #logging,
	#'squeak_changestamp' : 'stlu 5/4/2022 12:25'
}
RtMorphExample >> triggerDebugAction [

	"do nothing by default"
]

{
	#category : #running,
	#'squeak_changestamp' : 'stlu 6/27/2022 14:14'
}
RtMorphExample >> updateMorph [

	self shouldUpdateMorph ifFalse: [
		pictureUpdateTimes add: 0.
		stepTimes add: 0.
		inputTimes add: 0.
		^ self].
	world becomeActiveDuring: [
		world noDisplayDuring: [
			DisplayScreen checkForNewScreenSize.
			self processUserInputEvents.
			self doSteps.
			self updatePicture]].
]

{
	#category : #running,
	#'squeak_changestamp' : 'stlu 5/17/2022 11:32'
}
RtMorphExample >> updatePicture [

	| patcher startTime |
	patcher := PicRecordingCanvas new.
	patcher frame: numFrames.
	
	startTime := Time utcMicrosecondClock.
	patcher fullDrawMorph: world.
	world isWorldMorph ifTrue: [
		world worldState hands reverseDo: [:hand |
			hand submorphs do: [:each |
				patcher fullDrawMorph: each.
				self damageRecorder recordInvalidRect: each bounds]].
		shouldShowDamageRectangles ifTrue: [
			self damageRectangles do: [:rect |
				patcher frameRectangle: rect color: Color red]]].
	
	pictureUpdateTimes add: Time utcMicrosecondClock - startTime.
	picture := world picture.
]

{
	#category : #input,
	#'squeak_changestamp' : 'stlu 9/17/2021 12:49'
}
RtMorphExample >> virtualKeyToKeyCodeTable [

	^ virtualKeyToKeyCodeTable ifNil: [
		virtualKeyToKeyCodeTable := Dictionary new.
		EventSensor virtualKeyTable keysAndValuesDo: [:keyCode :virtualKey |
			virtualKeyToKeyCodeTable at: virtualKey put: keyCode]]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/8/2021 16:00'
}
RtMorphExample >> world [

	^ world
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/8/2021 16:54'
}
RtMorphExample >> world: aMorph [

	self assert: aMorph isWorldMorph.
	world := aMorph.
	world allMorphsDo: [:each | each picture: nil].
]
