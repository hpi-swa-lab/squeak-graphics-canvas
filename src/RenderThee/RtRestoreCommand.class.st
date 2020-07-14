Class {
	#name : #RtRestoreCommand,
	#superclass : #RtCanvasCommand,
	#category : 'RenderThee-CanvasCommands'
}

{ #category : #drawing }
RtRestoreCommand >> drawOn: aCanvas [

	aCanvas restore
]
