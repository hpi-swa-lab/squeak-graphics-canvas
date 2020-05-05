as yet unclassified
generateEnum: anElement
	| name value |
	name := anElement attributeAt: #name.
	(enums includes: name) ifFalse: [ ^self ].
	
	value := self convertEnumValue: (anElement attributeAt: #value).
	GL class compile: (name , ' ^ ' , value)