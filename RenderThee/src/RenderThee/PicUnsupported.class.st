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
	#'squeak_changestamp' : 'stlu 8/21/2020 13:51'
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicUnsupported class >> Remembrall [

	^ Remembrall ifNil: [Remembrall := Set new]
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicUnsupported class >> type: aSymbol [

	self Remembrall add: aSymbol.
	^ self new
		type: aSymbol;
		yourself
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/18/2021 13:06'
}
PicUnsupported >> acceptVisitor: aVisitor [

	aVisitor visitUnsupported: self
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicUnsupported >> drawOn: aCanvas [

	"do nothing"
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicUnsupported >> estimatedBounds [

	^ 0@0 extent: 1@1
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicUnsupported >> type [

	^ type
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicUnsupported >> type: anObject [

	type := anObject.
]
