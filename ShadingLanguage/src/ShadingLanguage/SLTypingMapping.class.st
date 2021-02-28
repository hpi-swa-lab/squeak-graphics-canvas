Class {
	#name : #SLTypingMapping,
	#superclass : #SLMessageMapping,
	#category : #ShadingLanguage,
	#commentStamp : ''
}

{
	#category : #generation,
	#timestamp : 'zagto 2/28/2021 19:26'
}
SLTypingMapping >> generate: aMessageNode for: aGenerator [

	aMessageNode isUsed ifTrue: [
		aGenerator visitNode: aMessageNode receiver].
]
