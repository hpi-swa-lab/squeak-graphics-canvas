Class {
	#name : #SLPassthroughMapping,
	#superclass : #SLMessageMapping,
	#category : #ShadingLanguage,
	#commentStamp : ''
}

{
	#category : #generation,
	#timestamp : 'stlu 12/2/2020 03:08'
}
SLPassthroughMapping >> generate: aMessageNode for: aGenerator [
	(aMessageNode isCascaded not or: [aMessageNode isFirstCascaded]) 
		ifTrue: [aGenerator visitNode: aMessageNode receiver].
	aMessageNode arguments do: [:each | aGenerator visitNode: each]
]
