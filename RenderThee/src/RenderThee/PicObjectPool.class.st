Class {
	#name : #PicObjectPool,
	#superclass : #NonPointersOrderedCollection,
	#instVars : [
		'instantiation'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 5/13/2022 15:48'
}
PicObjectPool class >> instantiation: aBlock [

	^ self new instantiation: aBlock
]

{
	#category : #private,
	#'squeak_changestamp' : 'stlu 5/13/2022 15:29'
}
PicObjectPool >> arrayType [

	^ Array
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/13/2022 15:47'
}
PicObjectPool >> borrow [

	| lastObject |
	firstIndex > lastIndex ifTrue: [^ instantiation value].
	lastObject := array at: lastIndex.
	lastIndex := lastIndex - 1.
	^ lastObject
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/13/2022 15:47'
}
PicObjectPool >> instantiation [

	^ instantiation
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/13/2022 15:47'
}
PicObjectPool >> instantiation: anObject [

	instantiation := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/13/2022 15:44'
}
PicObjectPool >> return: anObject [ 

	array size = lastIndex ifTrue: [self makeRoomAtLast].
	^ array at: (lastIndex := lastIndex + 1) put: anObject
]
