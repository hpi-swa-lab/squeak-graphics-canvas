Class {
	#name : #KhrOpenGLConstantsPoolGenerator,
	#superclass : #KhrRegistryVisitor,
	#category : #'OpenGL-Generation',
	#commentStamp : ''
}

{
	#category : #'constants pool',
	#timestamp : 'stlu 12/29/2020 20:19'
}
KhrOpenGLConstantsPoolGenerator >> generateConstantsPool: registry [

	self generateConstantsPoolVariables: registry.
	self generateConstantsPoolInitialization: registry.
]

{
	#category : #'constants pool',
	#timestamp : 'stlu 12/29/2020 20:56'
}
KhrOpenGLConstantsPoolGenerator >> generateConstantsPoolInitialization: registry [

	| enums mainSource padding groupSize groupIndex |
	self removeGeneratedMethodsIn: GLConstants theMetaClass.
	enums := registry enums values.
	groupIndex := 0.
	groupSize := 100.
	padding := (enums size / groupSize) ceiling numberOfDigitsInBase: 10.
	mainSource := String streamContents: [:mainStream |
		mainStream
			nextPutAll: 'initialize'; cr; cr; tab;
			nextPutAll: '<generated>'.
		1 to: enums size by: groupSize do: [:groupStart |
			| source index groupEnd |
			groupEnd := (groupStart + groupSize - 1) min: enums size.
			groupIndex := groupIndex + 1.
			index := groupIndex asString padded: #left to: padding with: $0.
			mainStream
				cr; tab;
				nextPutAll: 'self initialize';
				nextPutAll: index;
				nextPut: $..
			source := String streamContents: [:stream |
				stream
					nextPutAll: 'initialize';
					nextPutAll: index; cr; cr; tab;
					nextPutAll: '<generated>'.
				enums from: groupStart to: groupEnd do: [:enum |
					stream
						cr; tab;
						nextPutAll: enum name;
						nextPutAll: ' := ';
						print: enum value;
						nextPut: $.]].
			GLConstants theMetaClass compile: source classified: #'class initialization']].
	GLConstants theMetaClass compile: mainSource classified: #'class initialization'
]

{
	#category : #'constants pool',
	#timestamp : 'stlu 12/29/2020 20:15'
}
KhrOpenGLConstantsPoolGenerator >> generateConstantsPoolVariables: registry [

	| haves shoulds  |
	haves := GLConstants classVarNames asSet.
	shoulds := registry enums collect: [:enum | enum name].
	
	(haves copyWithoutAll: shoulds) do: [:each |
		GLConstants removeClassVarName: each].
	
	(shoulds copyWithoutAll: haves) do: [:each |
		GLConstants addClassVarName: each]
]

{
	#category : #visiting,
	#timestamp : 'stlu 2/22/2021 12:25'
}
KhrOpenGLConstantsPoolGenerator >> visitRegistry: registry [

	self generateConstantsPool: registry.
]
