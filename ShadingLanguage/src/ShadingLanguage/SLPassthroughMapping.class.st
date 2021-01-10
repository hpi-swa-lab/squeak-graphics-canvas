Class {
	#name : #SLPassthroughMapping,
	#superclass : #SLMessageMapping,
	#category : #ShadingLanguage,
	#commentStamp : ''
}

{
	#category : #generation,
	#timestamp : 'stlu 1/10/2021 13:04'
}
SLPassthroughMapping >> generate: aMessageNode for: aGenerator [
	(aMessageNode isCascaded not or: [aMessageNode isFirstCascaded]) ifTrue: [
		aGenerator visitNode: aMessageNode receiver]
]
