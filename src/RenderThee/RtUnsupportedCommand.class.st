Class {
	#name : #RtUnsupportedCommand,
	#superclass : #RtCanvasCommand,
	#instVars : [
		'type'
	],
	#classVars : [
		'Remembrall'
	],
	#category : #'RenderThee-CanvasCommands'
}

{ #category : #accessing }
RtUnsupportedCommand class >> Remembrall [

	^ Remembrall ifNil: [Remembrall := Set new]
]

{ #category : #'instance creation' }
RtUnsupportedCommand class >> type: aSymbol [

	self Remembrall add: aSymbol.
	^ self new
		type: aSymbol;
		yourself
]

{ #category : #drawing }
RtUnsupportedCommand >> drawOn: aCanvas [

	"do nothing"
]

{ #category : #accessing }
RtUnsupportedCommand >> type [

	^ type
]

{ #category : #accessing }
RtUnsupportedCommand >> type: anObject [

	type := anObject.
]
