private
window: aWindow

	^ aWindow isNull
		ifTrue: [nil]
		ifFalse: [aWindow]