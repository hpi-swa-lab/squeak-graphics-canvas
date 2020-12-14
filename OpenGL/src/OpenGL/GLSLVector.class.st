Class {
	#name : #GLSLVector,
	#superclass : #GLSLType,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : 'zagto 12/1/2020 18:23'
}
GLSLVector class >> componentType: type numComponents: size [
	size = 1 ifTrue: [ ^ type ].
	
	self allSubclassesDo: [ :cls |
		(cls componentType instance = type and: [ cls numComponents = size ]) ifTrue: [
			^ cls ]].
	
	self error: 'no such vector type'
]

{
	#category : #'*OpenGL-Wrappers-CodeGeneration',
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLVector class >> generateClasses [

	{ GLSLBoolean . GLSLFloat . GLSLDouble . GLSLInteger . GLSLUnsignedInteger} do: [:type |
		2 to: 4 do: [:components |
			| cls squeakName enumName declarator |
			squeakName := type squeakName , 'Vector' , components.
			cls := self subclass: 'GLSL' , squeakName.
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
	#timestamp : 'stlu 11/23/2020 13:21'
}
GLSLVector class >> numComponents [

	self subclassResponsibility
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:23'
}
GLSLVector >> numComponents [

	^ self class numComponents
]
