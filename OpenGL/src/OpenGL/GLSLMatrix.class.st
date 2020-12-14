Class {
	#name : #GLSLMatrix,
	#superclass : #GLSLType,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:15'
}
GLSLMatrix class >> componentType [

	self subclassResponsibility
]

{
	#category : #'*OpenGL-Wrappers-CodeGeneration',
	#timestamp : 'stlu 12/14/2020 16:45'
}
GLSLMatrix class >> generateClasses [

	{ GLSLFloat . GLSLDouble } do: [:type |
		2 to: 4 do: [:columns | "column-major"
			2 to: 4 do: [:rows |
				| cls squeakName enumName declarators |
				squeakName := type squeakName , 'Matrix' , columns , 'x' , rows.
				cls := self subclass: 'GLSL' , squeakName.
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
	#timestamp : 'stlu 11/23/2020 13:12'
}
GLSLMatrix class >> numColumns [

	self subclassResponsibility
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:11'
}
GLSLMatrix class >> numComponents [

	^ self numColumns * self numRows
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:12'
}
GLSLMatrix class >> numRows [

	self subclassResponsibility
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:15'
}
GLSLMatrix >> componentType [

	^ self class componentType
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:11'
}
GLSLMatrix >> numColumns [

	^ self class numColumns
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:23'
}
GLSLMatrix >> numComponents [

	^ self class numComponents
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:11'
}
GLSLMatrix >> numRows [

	^ self class numRows
]
