Class {
	#name : #GLSLType,
	#superclass : #Object,
	#classVars : [
		'EnumTable'
	],
	#pools : [
		'GLConstants'
	],
	#classInstVars : [
		'instance'
	],
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #'*OpenGL-Wrappers-CodeGeneration',
	#timestamp : 'stlu 11/23/2020 11:45'
}
GLSLType class >> compileAccessor: name value: return [

	self compileAccessor: name value: return classified: #accessing
]

{
	#category : #'*OpenGL-Wrappers-CodeGeneration',
	#timestamp : 'stlu 11/23/2020 11:44'
}
GLSLType class >> compileAccessor: name value: return classified: category [

	self theMetaClass compile: name asString , '

	^ ' , return classified: category asSymbol
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/19/2020 18:00'
}
GLSLType class >> declarator [

	^ self declarators
		ifEmpty: [nil]
		ifNotEmpty: [:declarators | declarators first]
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/19/2020 17:58'
}
GLSLType class >> declarators [

	^ #()
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 12:46'
}
GLSLType class >> enum [
	"Returns the type's corresponding OpenGL enum value or nil if there is none."
	^ nil
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 12:46'
}
GLSLType class >> enumName [
	"Returns the type's corresponding OpenGL enum name without the 'GL_' prefix"
	self subclassResponsibility
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/19/2020 06:44'
}
GLSLType class >> forEnum: anInteger [

	^ EnumTable at: anInteger
]

{
	#category : #'class initialization',
	#timestamp : 'stlu 11/19/2020 06:19'
}
GLSLType class >> initialize [

	self initializeEnumTable
]

{
	#category : #'class initialization',
	#timestamp : 'stlu 11/19/2020 06:16'
}
GLSLType class >> initializeEnumTable [

	EnumTable := Dictionary new: 120.
	self withAllSubclassesDo: [:cls |
		cls enum ifNotNil: [:enumValue |
			EnumTable at: enumValue put: cls instance]]
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/19/2020 06:30'
}
GLSLType class >> instance [

	^ instance ifNil: [instance := self basicNew initialize]
]

{
	#category : #'instance creation',
	#timestamp : 'stlu 12/14/2020 16:19'
}
GLSLType class >> numElements: arraySize enum: typeEnum [

	^ arraySize > 1
		ifTrue: [GLSLArray numElements: arraySize enum: typeEnum]
		ifFalse: [self forEnum: typeEnum]
]

{
	#category : #'*OpenGL-Wrappers-CodeGeneration',
	#timestamp : 'stlu 11/23/2020 11:14'
}
GLSLType class >> removeAllSubclasses [

	self allSubclassesDo: [:cls | cls removeFromSystem]
]

{
	#category : #'*OpenGL-Wrappers-CodeGeneration',
	#timestamp : 'stlu 11/19/2020 17:47'
}
GLSLType class >> subclass: symbolOrString [

	^ self subclass: symbolOrString asSymbol
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: self category
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 18:09'
}
GLSLType >> actualComponentType [

	^ self componentType
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/19/2020 17:58'
}
GLSLType >> declarator [

	^ self class declarator
]

{
	#category : #testing,
	#timestamp : 'stlu 12/14/2020 18:22'
}
GLSLType >> isArray [

	^ false
]

{
	#category : #testing,
	#timestamp : 'stlu 12/14/2020 18:21'
}
GLSLType >> isImage [

	^ false
]

{
	#category : #testing,
	#timestamp : 'stlu 12/14/2020 18:22'
}
GLSLType >> isMatrix [

	^ false
]

{
	#category : #testing,
	#timestamp : 'stlu 12/14/2020 18:22'
}
GLSLType >> isSampler [

	^ false
]

{
	#category : #testing,
	#timestamp : 'stlu 12/14/2020 18:22'
}
GLSLType >> isScalar [

	^ false
]

{
	#category : #testing,
	#timestamp : 'stlu 12/14/2020 18:22'
}
GLSLType >> isVector [

	^ false
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 16:15'
}
GLSLType >> numElements [

	^ 1
]

{
	#category : #printing,
	#timestamp : 'stlu 11/19/2020 17:58'
}
GLSLType >> printOn: aStream [

	self declarator
		ifNil: [super printOn: aStream]
		ifNotNil: [:declarator | aStream nextPutAll: declarator]
]

{
	#category : #'program resources',
	#timestamp : 'stlu 11/23/2020 16:15'
}
GLSLType >> setUniform: aUniform toArray: aRawBitsArray [

	self setUniform: aUniform toArray: aRawBitsArray count: self numElements
]

{
	#category : #'program resources',
	#timestamp : 'stlu 11/23/2020 16:08'
}
GLSLType >> setUniform: aUniform toArray: aRawBitsArray count: numElements [

	self subclassResponsibility
]

{
	#category : #'program resources',
	#timestamp : 'stlu 11/23/2020 16:08'
}
GLSLType >> setUniform: aUniform toObject: anObject [

	self subclassResponsibility
]
