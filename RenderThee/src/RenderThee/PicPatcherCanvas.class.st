"
I traverse a Morph tree and try to patch / recapture the parallel picture tree.
"
Class {
	#name : #PicPatcherCanvas,
	#superclass : #PicCanvas,
	#instVars : [
		'invalidationStamp'
	],
	#category : #'RenderThee-Pictures',
	#'squeak_changestamp' : 'stlu 8/10/2021 16:29'
}

{
	#category : #'drawing-general',
	#'squeak_changestamp' : 'stlu 8/12/2021 13:41'
}
PicPatcherCanvas >> fullDrawMorph: aMorph [

	| picture |
	picture := aMorph picture.
	
	(picture notNil and: [picture isValid]) ifTrue: [
		| offset |
		offset := aMorph position - picture position.
		offset isZero
			ifTrue: [
				self addCommand: picture]
			ifFalse: [
				self translateBy: offset during: [
					self addCommand: picture]].
		^ self].
	
	picture
		ifNil: [aMorph picture: (picture := PicMorph new)]
		ifNotNil: [picture removeAllChildren].
	picture invalidationStamp: invalidationStamp.
	picture bounds: aMorph bounds.
	self group: picture during: [
		aMorph fullDrawOn: self].
	picture markValid.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 8/11/2021 16:59'
}
PicPatcherCanvas >> initialize [

	super initialize.
	ignoreClip := true.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:19'
}
PicPatcherCanvas >> invalidationStamp [

	^ invalidationStamp
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:19'
}
PicPatcherCanvas >> invalidationStamp: anObject [

	invalidationStamp := anObject.
]
