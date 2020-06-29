Extension { #name : #ByteArray }

{ #category : #'*Vulkan-Core' }
ByteArray >> copyToExternalMemoryType: aType [

	| data |
	data := ExternalData fromHandle: (ExternalAddress allocate: self size) type: ExternalType byte asPointerType.
	data size: self size.
	
	1 to: self size do: [:index | data at: index put: (self at: index)].
	^ data asType: aType
]
