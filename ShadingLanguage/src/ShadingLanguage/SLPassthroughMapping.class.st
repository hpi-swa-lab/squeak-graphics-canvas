Class {
	#name : #SLPassthroughMapping,
	#superclass : #SLMessageMapping,
	#category : #ShadingLanguage,
	#commentStamp : ''
}

{
	#category : #generation,
	#timestamp : 'zagto 2/28/2021 19:26'
}
SLPassthroughMapping >> generate: aMessageNode for: aGenerator [

	(aMessageNode isCascaded not or: [aMessageNode isFirstCascaded]) ifTrue: [
		aGenerator visitNode: aMessageNode receiver].
]
