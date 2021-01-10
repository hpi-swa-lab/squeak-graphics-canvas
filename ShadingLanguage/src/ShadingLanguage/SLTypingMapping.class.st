Class {
	#name : #SLTypingMapping,
	#superclass : #SLMessageMapping,
	#category : #ShadingLanguage,
	#commentStamp : ''
}

{
	#category : #generation,
	#timestamp : 'stlu 1/10/2021 20:26'
}
SLTypingMapping >> generate: aMessageNode for: aGenerator [

	aMessageNode isUsed ifTrue: [
		aGenerator visitNode: aMessageNode receiver]
]
