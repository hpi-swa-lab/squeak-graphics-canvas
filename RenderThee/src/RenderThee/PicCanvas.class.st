"
I traverse a Morph tree and try to patch / recapture the parallel picture tree.
"
Class {
	#name : #PicCanvas,
	#superclass : #PicBasicCanvas,
	#instVars : [
		'invalidationStamp'
	],
	#category : #'RenderThee-Pictures',
	#'squeak_changestamp' : 'stlu 8/10/2021 16:29'
}

{
	#category : #'drawing-general',
	#'squeak_changestamp' : 'stlu 4/19/2022 15:37'
}
PicCanvas >> fullDrawMorph: aMorph [

	| picture |
	picture := aMorph picture.
	
	(picture notNil and: [picture isValid]) ifTrue: [
		picture offset: aMorph position - picture position.
		self addNode: picture.
		^ self].
	
	picture
		ifNil: [aMorph picture: (picture := PicPicture new)]
		ifNotNil: [picture removeAllChildren; offset: 0@0].
	picture invalidationStamp: invalidationStamp.
	picture bounds: aMorph bounds.
	self group: picture during: [
		| previousClip |
		previousClip := clipRect.
		clipRect := Rectangle infinite.
		aMorph fullDrawOn: self.
		clipRect := previousClip].
	picture markValid.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:19'
}
PicCanvas >> invalidationStamp [

	^ invalidationStamp
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:19'
}
PicCanvas >> invalidationStamp: anObject [

	invalidationStamp := anObject.
]
