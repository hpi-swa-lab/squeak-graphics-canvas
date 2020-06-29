Extension { #name : #ByteString }

{ #category : #'*Vulkan-Core' }
ByteString >> asExternalString [

	| data |
	data := ExternalData fromHandle: (ExternalAddress allocate: self size + 1) type: ExternalType string.
	1 to: self size do: [:index | data at: index put: (self at: index)].
	data at: self size + 1 put: (Character value: 0).
	^ data
]
