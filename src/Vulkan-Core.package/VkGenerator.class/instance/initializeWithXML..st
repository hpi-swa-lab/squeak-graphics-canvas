as yet unclassified
initializeWithXML: anXML

	registry := anXML firstTagNamed: #registry.
	
	SBLabel text: [
		'a number of types has a *Bits and a *Flag type alias, we only want one of those'].
	bitmaskTypes := Dictionary new.
	
	SBLabel text: [
		'some types can only be used as void* because they are defined externally'].
	externalTypes := OrderedCollection new.
	
	self patchCAMetalLayer.
	self createTypes.
	self createEnums.
	self createCommands.
	self createExtension: 'VK_EXT_debug_utils'