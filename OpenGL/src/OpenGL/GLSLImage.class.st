Class {
	#name : #GLSLImage,
	#superclass : #GLSLType,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #'*OpenGL-Wrappers-CodeGeneration',
	#timestamp : 'stlu 12/14/2020 16:43'
}
GLSLImage class >> generateClasses [

	{ GLSLFloat . GLSLInteger . GLSLUnsignedInteger } do: [:pixelType |
		#(
			('1D')
			('1D' 'Array')
			('2D')
			('2D' 'Array')
			('2D' 'Multisample')
			('2D' 'Multisample' 'Array')
			('2D' 'Rect')
			('3D')
			('Buffer')
			('Cube')
			('Cube' 'Map' 'Array')
		) do: [:type |
			| cls squeakName enumName declarator glslType |
			squeakName := pixelType squeakName , type join , 'Image'.
			cls := self subclass: 'GLSL' , squeakName.
			cls compileAccessor: 'squeakName' value: squeakName storeString.
			glslType := type asOrderedCollection
							replaceAll: 'Multisample' with: 'MS';
							remove: 'Map' ifAbsent: [];
							yourself.
			declarator := pixelType glslInitials , 'image' , glslType join.
			cls compileAccessor: 'declarators' value: { declarator } storeString.
			enumName := (pixelType = GLSLFloat ifTrue: [''] ifFalse: [pixelType enumName , '_'])
							, 'IMAGE_'
							, (type joinSeparatedBy: '_') asUppercase.
			cls compileAccessor: 'enumName' value: enumName storeString.
			cls compileAccessor: 'enum' value: 'GL_' , enumName]]
]

{
	#category : #'program resources',
	#timestamp : 'stlu 11/23/2020 16:47'
}
GLSLImage >> setUniform: aUniform toArray: aRawBitsArray count: numElements [

	aUniform setTo1ComponentIntegerArray: aRawBitsArray count: numElements
]
