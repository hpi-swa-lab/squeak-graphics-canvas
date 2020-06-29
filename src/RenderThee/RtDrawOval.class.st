Class {
	#name : #RtDrawOval,
	#superclass : #RtDrawShape,
	#category : #'RenderThee-CanvasCommands'
}

{ #category : #drawing }
RtDrawOval >> drawOn: aCanvas [

	self flag: #todo.
	aCanvas
		fillOval: bounds
		fillStyle: fillStyle
		borderWidth: borderStyle width
		borderColor: borderStyle color
]
