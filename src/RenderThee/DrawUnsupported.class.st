Class {
	#name : #DrawUnsupported,
	#superclass : #RtDrawCommand,
	#instVars : [
		'type'
	],
	#classVars : [
		'Remembrall'
	],
	#category : 'RenderThee-Drawing'
}

{ #category : #accessing }
DrawUnsupported class >> Remembrall [

	^ Remembrall ifNil: [Remembrall := Set new]
]

{ #category : #'instance creation' }
DrawUnsupported class >> type: aSymbol [

	self Remembrall add: aSymbol.
	^ self new
		type: aSymbol;
		yourself
]

{ #category : #drawing }
DrawUnsupported >> drawOn: aCanvas [

	"do nothing"
]

{ #category : #accessing }
DrawUnsupported >> type [

	^ type
]

{ #category : #accessing }
DrawUnsupported >> type: anObject [

	type := anObject.
]

{ #category : #visiting }
DrawUnsupported >> visit: aVisitor [

	^ aVisitor visitDrawUnsupported: self
]
