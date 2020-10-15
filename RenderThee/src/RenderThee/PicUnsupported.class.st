"
I am a null object created for graphical operations which currently can not be correctly represented.
I can hold an object that closer specifies the operation in question.
My class globally stores all such specifications in its class variable `Remembrall` in order to find out which features are unsupported but actually used.
"
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
