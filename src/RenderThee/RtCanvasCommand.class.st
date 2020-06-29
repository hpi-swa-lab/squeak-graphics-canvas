Class {
	#name : #RtCanvasCommand,
	#superclass : #Object,
	#category : 'RenderThee-CanvasCommands'
}

{ #category : #drawing }
RtCanvasCommand >> drawOn: aCanvas [

	self subclassResponsibility
]

{ #category : #testing }
RtCanvasCommand >> isDraw [

	^ false
]
