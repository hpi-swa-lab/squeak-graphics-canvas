Extension { #name : #Morph }

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 5/17/2022 10:57'
}
Morph >> createPicture [

	self allMorphsDo: [:each | each picture: nil].
	PicRecordingCanvas new fullDrawMorph: self.
	^ self picture
]

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 6/27/2022 12:36'
}
Morph >> demoMove [

	| velocity myBounds vx vy pLeft pTop bounced aRect pBottom pRight xOffset yOffset |
	velocity := self
		valueOfProperty: #demoMoveVelocity
		ifAbsent: [Point r: (10 atRandom + 1) asFloat degrees: 360 atRandom asFloat].
	
	aRect := self worldBounds.
	myBounds := self bounds.
	vx := velocity x.
	vy := velocity y.
	pLeft := myBounds left + vx.	
	pTop := myBounds top + vy.
	pRight := myBounds right + vx.
	pBottom := myBounds bottom + vy.
	xOffset := 0.
	yOffset := 0.
	
	bounced := false.
	pRight > aRect right ifTrue: [
		xOffset := aRect right - pRight.
		vx := velocity x negated.
		bounced := true].
	pBottom > aRect bottom ifTrue: [
		yOffset := aRect bottom - pBottom.
		vy := velocity y negated.
		bounced := true].
	pLeft < aRect left ifTrue: [
		xOffset := aRect left - pLeft.
		vx := velocity x negated.
		bounced := true].
	pTop < aRect top ifTrue: [
		yOffset := aRect top - pTop.
		vy := velocity y negated.
		bounced := true].
	self position: pLeft + xOffset @ (pTop + yOffset).
	bounced ifTrue: [velocity := vx @ vy].
	
	self setProperty: #demoMoveVelocity toValue: velocity.
]

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 5/17/2022 10:38'
}
Morph >> picture [

	^ extension ifNotNil: [
		extension picture]
]

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 5/17/2022 10:41'
}
Morph >> picture: aPicture [

	(extension isNil and: [aPicture isNil]) ifTrue: [^ self].
	self assureExtension picture: aPicture.
]

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 6/27/2022 12:28'
}
Morph >> startDemoMove [

	self startStepping: #demoMove at: Time millisecondClockValue arguments: #() stepTime: 0.
]

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 6/27/2022 12:27'
}
Morph >> stopDemoMove [

	self stopSteppingSelector: #demoMove.
]
