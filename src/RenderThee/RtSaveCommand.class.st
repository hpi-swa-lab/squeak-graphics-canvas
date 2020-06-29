Class {
	#name : #RtSaveCommand,
	#superclass : #RtCanvasCommand,
	#category : 'RenderThee-CanvasCommands'
}

{ #category : #drawing }
RtSaveCommand >> drawOn: aCanvas [

	aCanvas save
]
