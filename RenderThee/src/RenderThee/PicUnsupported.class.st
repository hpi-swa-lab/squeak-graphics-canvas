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
	#category : #'RenderThee-Pictures',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicUnsupported class >> Remembrall [

	^ Remembrall ifNil: [Remembrall := Set new]
]

{
	#category : #'instance creation',
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicUnsupported class >> type: aSymbol [

	self Remembrall add: aSymbol.
	^ self new
		type: aSymbol;
		yourself
]

{
	#category : #drawing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicUnsupported >> drawOn: aCanvas [

	"do nothing"
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicUnsupported >> estimatedBounds [

	^ 0@0 extent: 1@1
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicUnsupported >> type [

	^ type
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicUnsupported >> type: anObject [

	type := anObject.
]
