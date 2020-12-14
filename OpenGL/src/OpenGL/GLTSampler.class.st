Class {
	#name : #GLTSampler,
	#superclass : #GLType,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #'*OpenGL-Wrappers-CodeGeneration',
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTSampler class >> generateClasses [

	{ GLTFloat . GLTInteger . GLTUnsignedInteger } do: [:pixelType |
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
			squeakName := pixelType squeakName , type join , 'Sampler'.
			cls := self subclass: 'GLT' , squeakName.
			cls compileAccessor: 'squeakName' value: squeakName storeString.
			glslType := type asOrderedCollection
							replaceAll: 'Multisample' with: 'MS';
							remove: 'Map' ifAbsent: [];
							yourself.
			declarator := pixelType glslInitials , 'sampler' , glslType join.
			cls compileAccessor: 'declarators' value: { declarator } storeString.
			enumName := (pixelType = GLTFloat ifTrue: [''] ifFalse: [pixelType enumName , '_'])
							, 'SAMPLER_'
							, (type joinSeparatedBy: '_') asUppercase.
			cls compileAccessor: 'enumName' value: enumName storeString.
			cls compileAccessor: 'enum' value: 'GL_' , enumName.
			cls compileAccessor: 'componentType' value: pixelType]]
]

{
	#category : #'program resources',
	#timestamp : 'zagto 12/1/2020 15:25'
}
GLTSampler >> at: aVector2Type [
	self flag: #todo. "dynamic input / output dimenstions"
	
	self assert: (aVector2Type isKindOf: GLTFloatVector2).
	^ SLMappingToCall new
		targetSelector: 'texture';
		type: GLTFloatVector4 instance.
]

{
	#category : #'program resources',
	#timestamp : 'stlu 11/23/2020 17:05'
}
GLTSampler >> setUniform: aUniform toArray: aRawBitsArray count: numElements [

	aUniform setTo1ComponentIntegerArray: aRawBitsArray count: numElements
]
