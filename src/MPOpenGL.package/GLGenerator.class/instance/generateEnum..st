code generation
generateEnum: anElement

	| name enum code value |
	name := anElement attributeAt: #name.
	enum := enums at: name ifAbsent: [^ self].
	
	value := self convertEnumValue: (anElement attributeAt: #value).
	
	code := String streamContents: [:stream |
		stream
			nextPutAll: name;
			cr; cr; tab;
			nextPut: $^;
			space;
			nextPutAll: value].
	
	enum compile: code