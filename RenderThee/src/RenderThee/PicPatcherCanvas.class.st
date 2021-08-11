"
I traverse a Morph tree and try to patch / recapture the parallel picture tree.
"
Class {
	#name : #PicPatcherCanvas,
	#superclass : #PicCanvas,
	#category : #'RenderThee-Pictures',
	#'squeak_changestamp' : 'stlu 8/10/2021 16:29'
}

{
	#category : #'drawing-general',
	#'squeak_changestamp' : 'stlu 8/11/2021 14:02'
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
	picture position: aMorph position.
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
