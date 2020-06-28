as yet unclassified
createTypedef: aType type: aString

	| class name |
	name := aType isString ifTrue: [aType] ifFalse: [(aType elementAt: #name) ifNotNil: #contentString ifNil: [aType attributeAt: #name]].
	self assert: name notNil.
	
	class := ExternalTypeAlias
		subclass: name asSymbol
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: 'Vulkan-Generated'.
	class class compile: 'originalTypeName

    ^ ''', (aString, '''').
	^ class