Extension { #name : #ExternalAddress }

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 4/22/2022 15:53'
}
ExternalAddress class >> fromObject: anObject [

	| handle |
	handle := AlienStub forOop.
	handle oopAt: 1 put: anObject.
	^ self fromInteger: handle addressField
]
