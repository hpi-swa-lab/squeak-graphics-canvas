Class {
	#name : #PicUnsupported,
	#superclass : #PicCommand,
	#instVars : [
		'type'
	],
	#classVars : [
		'Remembrall'
	],
	#category : #'RenderThee-Pictures'
}

{ #category : #accessing }
PicUnsupported class >> Remembrall [

	^ Remembrall ifNil: [Remembrall := Set new]
]

{ #category : #'instance creation' }
PicUnsupported class >> type: aSymbol [

	self Remembrall add: aSymbol.
	^ self new
		type: aSymbol;
		yourself
]

{ #category : #drawing }
PicUnsupported >> drawOn: aCanvas [

	"do nothing"
]

{ #category : #accessing }
PicUnsupported >> estimatedBounds [

	^ 0@0 extent: 1@1
]

{ #category : #accessing }
PicUnsupported >> type [

	^ type
]

{ #category : #accessing }
PicUnsupported >> type: anObject [

	type := anObject.
]
