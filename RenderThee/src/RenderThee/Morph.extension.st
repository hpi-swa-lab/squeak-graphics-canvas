Extension { #name : #Morph }

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 5/17/2022 10:57'
}
Morph >> createPicture [

	self allMorphsDo: [:each | each picture: nil].
	PicRecordingCanvas new fullDrawMorph: self.
	^ self picture
]

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 5/17/2022 10:38'
}
Morph >> picture [

	^ extension ifNotNil: [
		extension picture]
]

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 5/17/2022 10:41'
}
Morph >> picture: aPicture [

	(extension isNil and: [aPicture isNil]) ifTrue: [^ self].
	self assureExtension picture: aPicture.
]
