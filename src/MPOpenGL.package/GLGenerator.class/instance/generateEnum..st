as yet unclassified
generateEnum: anElement
	| name value |
	name := anElement attributeAt: #name.
	(enums includesKey: name) ifFalse: [ ^self ].
	
	value := self convertEnumValue: (anElement attributeAt: #value).
	(enums at: name) compile: (name , ' ^ ' , value)