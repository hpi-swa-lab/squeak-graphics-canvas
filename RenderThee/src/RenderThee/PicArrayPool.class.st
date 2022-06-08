Class {
	#name : #PicArrayPool,
	#superclass : #Object,
	#instVars : [
		'arrayClass',
		'pool'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 6/3/2022 14:54'
}
PicArrayPool class >> ofClass: arrayClass [

	^ self new
		arrayClass: arrayClass;
		yourself
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/3/2022 14:54'
}
PicArrayPool >> arrayClass [

	^ arrayClass
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/3/2022 14:54'
}
PicArrayPool >> arrayClass: anObject [

	arrayClass := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/3/2022 14:56'
}
PicArrayPool >> borrow: minSize [

	| slot sizedPool |
	slot := (minSize - 1) highBit.
	(sizedPool := pool at: slot + 1) isEmpty ifTrue: [
		^ arrayClass new: (1 bitShift: slot)].
	^ sizedPool removeLast
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 6/3/2022 17:19'
}
PicArrayPool >> initialize [

	super initialize.
	arrayClass := Array.
	pool := Array new: 64.
	1 to: pool size do: [:index |
		pool at: index put: OrderedCollection new].
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/3/2022 14:53'
}
PicArrayPool >> return: anArray [

	| slot |
	arrayClass ~~ anArray class ifTrue: [
		self error: 'Tried to return an array of the wrong class.'].
	slot := (anArray size - 1) highBit.
	(pool at: slot + 1) addLast: anArray.
]
