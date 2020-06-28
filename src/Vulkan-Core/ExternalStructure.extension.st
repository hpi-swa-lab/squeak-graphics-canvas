Extension { #name : #ExternalStructure }

{ #category : #'*Vulkan-Core' }
ExternalStructure >> zeroAllFields [

	1 to: self class byteSize do: [:index |
		handle byteAt: index put: 0]
]
