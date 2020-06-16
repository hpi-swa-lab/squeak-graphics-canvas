code string conversion
codeAsUtf8ExternalData
	| utf8 data |
	utf8 := code utf8Encoded.
	data := ExternalData fromHandle: (ExternalAddress gcallocate: utf8 size + 1) type: ExternalType string.
	1 to: utf8 size do: [:index | data getHandle byteAt: index put: (utf8 at: index)].
	data getHandle byteAt: utf8 size + 1 put: 0.
	^ data