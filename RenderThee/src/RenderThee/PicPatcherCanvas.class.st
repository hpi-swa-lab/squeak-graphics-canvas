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
	#'squeak_changestamp' : 'stlu 12/6/2021 17:19'
}
PicPatcherCanvas >> fullDrawMorph: aMorph [

	| picture |
	picture := aMorph picture.
	
	(picture notNil and: [picture isValid]) ifTrue: [
		picture hasChildren ifFalse: [^ self].
		picture offset: aMorph position - picture position.
		self addNode: picture.
		^ self].
	
	picture
		ifNil: [aMorph picture: (picture := PicMorphNode new)]
		ifNotNil: [picture removeAllChildren; offset: nil].
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
