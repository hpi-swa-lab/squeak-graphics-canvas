Class {
	#name : #KhrRegistryVisitor,
	#superclass : #Object,
	#category : #'OpenGL-Generation',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : 'stlu 2/22/2021 12:29'
}
KhrRegistryVisitor class >> visit: aNode [

	^ self new visit: aNode
]

{
	#category : #utility,
	#timestamp : 'stlu 2/22/2021 12:27'
}
KhrRegistryVisitor >> removeGeneratedMethodsIn: aClass [

	(Pragma allNamed: #generated in: aClass) do: [:pragma |
		aClass removeSelector: pragma method selector]
]

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
	#timestamp : 'stlu 2/22/2021 12:33'
}
KhrRegistryVisitor >> visitCommandDefinition: definition [

	
]

{
	#category : #visiting,
	#timestamp : 'stlu 12/28/2020 13:36'
}
KhrRegistryVisitor >> visitEnum: enum [

	
]

{
	#category : #visiting,
	#timestamp : 'stlu 2/22/2021 12:33'
}
KhrRegistryVisitor >> visitEnumDefinition: definition [

	
]

{
	#category : #visiting,
	#timestamp : 'stlu 12/28/2020 13:37'
}
KhrRegistryVisitor >> visitEnumGroup: enumGroup [

	
]

{
	#category : #visiting,
	#timestamp : 'stlu 2/22/2021 12:55'
}
KhrRegistryVisitor >> visitFeature: feature [

	
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

{
	#category : #visiting,
	#timestamp : 'stlu 2/22/2021 12:33'
}
KhrRegistryVisitor >> visitTypeDefinition: definition [

	
]
