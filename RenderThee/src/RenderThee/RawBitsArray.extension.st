Extension { #name : #RawBitsArray }

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 4/22/2022 16:23'
}
RawBitsArray >> addressAt: anIndex [

	self pin.
	^ (ExternalAddress fromObject: self) + Smalltalk wordSize + (anIndex - 1 * self bytesPerElement)
]
