Class {
	#name : #KhrRegistryVisitor,
	#superclass : #Object,
	#category : #'OpenGL-Generation',
	#commentStamp : ''
}

{
	#category : #visiting,
	#timestamp : 'stlu 12/28/2020 13:12'
}
KhrRegistryVisitor >> visit: anObject [

	 ^ anObject acceptVisitor: self
]

{
	#category : #visiting,
	#timestamp : 'stlu 12/28/2020 13:17'
}
KhrRegistryVisitor >> visitAPI: api [

	api features do: [:feature |
		self visit: feature]
]

{
	#category : #visiting,
	#timestamp : 'stlu 12/28/2020 13:36'
}
KhrRegistryVisitor >> visitCommand: cmd [

	
]

{
	#category : #visiting,
	#timestamp : 'stlu 12/28/2020 14:30'
}
KhrRegistryVisitor >> visitDefinition: definition [

	
]

{
	#category : #visiting,
	#timestamp : 'stlu 12/28/2020 13:36'
}
KhrRegistryVisitor >> visitEnum: enum [

	
]

{
	#category : #visiting,
	#timestamp : 'stlu 12/28/2020 13:37'
}
KhrRegistryVisitor >> visitEnumGroup: enumGroup [

	
]

{
	#category : #visiting,
	#timestamp : 'stlu 12/28/2020 13:33'
}
KhrRegistryVisitor >> visitFeature: feature [

	feature profiles do: [:profile |
		self visit: profile]
]

{
	#category : #visiting,
	#timestamp : 'stlu 12/28/2020 13:06'
}
KhrRegistryVisitor >> visitParameter: param [
]

{
	#category : #visiting,
	#timestamp : 'stlu 12/28/2020 14:48'
}
KhrRegistryVisitor >> visitProfile: profile [

	profile definitions do: [:definition |
		self visit: definition]
]

{
	#category : #visiting,
	#timestamp : 'stlu 12/28/2020 13:12'
}
KhrRegistryVisitor >> visitRegistry: registry [

	registry apis do: [:api |
		self visit: api].
]
