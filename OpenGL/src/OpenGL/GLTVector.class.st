Class {
	#name : #GLTVector,
	#superclass : #GLType,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #'as yet unclassified',
	#timestamp : 'zagto 12/1/2020 18:23'
}
GLTVector class >> componentType: type numComponents: size [
	size = 1 ifTrue: [ ^ type ].
	
	self allSubclassesDo: [ :cls |
		(cls componentType instance = type and: [ cls numComponents = size ]) ifTrue: [
			^ cls ]].
	
	self error: 'no such vector type'
]

{
	#category : #'code generation',
	#timestamp : ''
}
GLTVector class >> generateClasses [

	{ GLTBoolean . GLTFloat . GLTDouble . GLTInteger . GLTUnsignedInteger} do: [:type |
		2 to: 4 do: [:components |
			| cls squeakName enumName declarator |
			squeakName := type squeakName , 'Vector' , components.
			cls := self subclass: 'GLT' , squeakName.
			cls compileAccessor: 'squeakName' value: squeakName storeString.
			declarator := type glslInitials , 'vec' , components.
			cls compileAccessor: 'declarators' value: { declarator } storeString.
			enumName := type enumName , '_VEC' , components.
			cls compileAccessor: 'enumName' value: enumName storeString.
			cls compileAccessor: 'enum' value: 'GL_' , enumName.
			
			cls compileAccessor: 'numComponents' value: components.
			cls compileAccessor: 'componentType' value: type name]]
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTVector class >> numComponents [

	self subclassResponsibility
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTVector >> numComponents [

	^ self class numComponents
]
