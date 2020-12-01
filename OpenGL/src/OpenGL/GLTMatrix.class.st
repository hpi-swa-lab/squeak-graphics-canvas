Class {
	#name : #GLTMatrix,
	#superclass : #GLType,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTMatrix class >> componentType [

	self subclassResponsibility
]

{
	#category : #'code generation',
	#timestamp : ''
}
GLTMatrix class >> generateClasses [

	{ GLTFloat . GLTDouble } do: [:type |
		2 to: 4 do: [:columns | "column-major"
			2 to: 4 do: [:rows |
				| cls squeakName enumName declarators |
				squeakName := type squeakName , 'Matrix' , columns , 'x' , rows.
				cls := self subclass: 'GLT' , squeakName.
				cls compileAccessor: 'squeakName' value: squeakName storeString.
				declarators := { type glslInitials , 'mat' , columns , 'x' , rows }.
				rows = columns ifTrue: [
					declarators := { declarators first allButLast: 2 . declarators first }].
				cls compileAccessor: 'declarators' value: declarators storeString.
				enumName := type enumName , '_MAT' , columns , (columns = rows ifTrue: [''] ifFalse: ['x' , rows]).
				cls compileAccessor: 'enumName' value: enumName storeString.
				cls compileAccessor: 'enum' value: 'GL_' , enumName.
				
				cls compileAccessor: 'numColumns' value: columns.
				cls compileAccessor: 'numRows' value: rows.
				cls compileAccessor: 'componentType' value: type name]]]
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTMatrix class >> numColumns [

	self subclassResponsibility
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTMatrix class >> numComponents [

	^ self numColumns * self numRows
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTMatrix class >> numRows [

	self subclassResponsibility
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTMatrix >> componentType [

	^ self class componentType
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTMatrix >> numColumns [

	^ self class numColumns
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTMatrix >> numComponents [

	^ self class numComponents
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTMatrix >> numRows [

	^ self class numRows
]
