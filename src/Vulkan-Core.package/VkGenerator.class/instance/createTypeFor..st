as yet unclassified
createTypeFor: type

	(type attributeAt: #category) = #handle ifTrue: [
		SBLabel text: ['not sure if void* or uint64_t'].
		^ self createTypedef: type type: 'intptr_t'].
	(type attributeAt: #category) = #bitmask ifTrue: [ | class |
		^ (type attributeAt: #alias)
			ifNotNil: [:alias | self createTypedef: type type: alias]
			ifNil: [
				class := self createTypedef: type type: 'long'.
				(type attributeAt: #requires) ifNotNil: [:req | bitmaskTypes at: req put: class]]].
	(type attributeAt: #category) = #funcpointer ifTrue: [^ self createTypedef: type type: 'void*'].
	((type attributeAt: #category) = #enum and: [(type attributeAt: #alias) notNil]) ifTrue: [
		^ self createTypedef: type type: (self typeName: (type attributeAt: #alias) from: nil)].
	(type attributeAt: #category) = #basetype ifTrue: [
		(type contentString beginsWith: 'typedef') ifTrue: [^ self createTypedef: type].
		(type contentString beginsWith: 'struct') ifTrue: [
			^ externalTypes add: (type elementAt: #name) contentString]].
	(type attributeAt: #category) = #struct ifTrue: [^ self createStruct: type].
	(type attributeAt: #category) = #union ifTrue: [^ self createUnion: type].
	(type attributeAt: #requires) ifNotNil: [:req |
		SBLabel text: [
			'vk_platform defines are just our standard types like uint64_t'].
		^ req ~= 'vk_platform' ifTrue: [externalTypes add: (type attributeAt: #name)]]