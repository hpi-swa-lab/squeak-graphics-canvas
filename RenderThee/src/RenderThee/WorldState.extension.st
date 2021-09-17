Extension { #name : #WorldState }

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 9/17/2021 13:56'
}
WorldState >> processUserInputEvents [

	| capturingGesture |
	capturingGesture := false.
	LastCycleTime := Time millisecondClockValue.
	self handsDo: [:hand |
		hand becomeActiveDuring: [
			hand processEvents.
			capturingGesture := capturingGesture or: [hand isCapturingGesturePoints]]].
	^ capturingGesture not "should display?"
]
