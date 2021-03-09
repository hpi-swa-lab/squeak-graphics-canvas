Class {
	#name : #KhrOpenGLDebugLibraryGenerator,
	#superclass : #KhrRegistryVisitor,
	#category : #'OpenGL-Generation',
	#commentStamp : ''
}

{
	#category : #utility,
	#timestamp : 'stlu 2/22/2021 13:07'
}
KhrOpenGLDebugLibraryGenerator >> cleanUp: aClass [

	self removeGeneratedMethodsIn: aClass theNonMetaClass.
	self removeGeneratedMethodsIn: aClass theMetaClass.
	aClass theNonMetaClass organization removeEmptyCategories.
	aClass theMetaClass organization removeEmptyCategories.
]

{
	#category : #'method sources',
	#timestamp : 'stlu 12/28/2020 16:29'
}
KhrOpenGLDebugLibraryGenerator >> commandSignature: aCommand [

	^ String streamContents: [:stream |
		| selector |
		selector := aCommand name allButFirst: 2. "remove 'gl' prefix"
		selector second isLowercase ifTrue: [
			selector at: 1 put: selector first asLowercase].
		stream nextPutAll: selector.
	
		aCommand parameters ifNotEmpty: [stream nextPutAll: ': '.].
		aCommand parameters
			do: [:param | stream nextPutAll: param name]
			separatedBy: [stream nextPutAll: ' with: ']]
]

{
	#category : #'method sources',
	#timestamp : 'stlu 2/22/2021 13:44'
}
KhrOpenGLDebugLibraryGenerator >> commandSource: definition [

	| args template |
	template := '{1}

	<generated>
	library {1}.
	library checkForError'.
	
	args := {
		self commandSignature: definition target.
	}.
	
	^ template format: args
]

{
	#category : #'method sources',
	#timestamp : 'stlu 12/28/2020 18:17'
}
KhrOpenGLDebugLibraryGenerator >> enumSignature: anEnum [

	| name |
	name := anEnum name.
	^ name fourth canBeIdentifierInitial
		ifTrue: [name allButFirst: 3 "remove GL_* prefix"]
		ifFalse: [name]
]

{
	#category : #'method sources',
	#timestamp : 'stlu 2/22/2021 13:42'
}
KhrOpenGLDebugLibraryGenerator >> enumSource: definition [

	| args template |
	template := '{1}

	<generated>
	^ {2}'.
	
	args := {
		self enumSignature: definition target.
		definition target name.
	}.
	
	^ template format: args
]

{
	#category : #visiting,
	#timestamp : 'stlu 2/22/2021 13:44'
}
KhrOpenGLDebugLibraryGenerator >> visitCommandDefinition: definition [

	GLDebugLibrary
		compile: (self commandSource: definition)
		classified: #'api - commands'
]

{
	#category : #visiting,
	#timestamp : 'stlu 2/22/2021 13:44'
}
KhrOpenGLDebugLibraryGenerator >> visitEnumDefinition: definition [

	GLDebugLibrary
		compile: (self enumSource: definition)
		classified: #'api - enums'
]

{
	#category : #visiting,
	#timestamp : 'stlu 2/22/2021 13:33'
}
KhrOpenGLDebugLibraryGenerator >> visitFeature: feature [

	feature profiles do: [:profile | self visit: profile].
]
