Class {
	#name : #GLType,
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
	#category : #'code generation',
	#timestamp : ''
}
GLType class >> compileAccessor: name value: return [

	self compileAccessor: name value: return classified: #accessing
]

{
	#category : #'code generation',
	#timestamp : ''
}
GLType class >> compileAccessor: name value: return classified: category [

	self theMetaClass compile: name asString , '

	^ ' , return classified: category asSymbol
]

{
	#category : #accessing,
	#timestamp : ''
}
GLType class >> declarator [

	^ self declarators
		ifEmpty: [nil]
		ifNotEmpty: [:declarators | declarators first]
]

{
	#category : #accessing,
	#timestamp : ''
}
GLType class >> declarators [

	^ #()
]

{
	#category : #accessing,
	#timestamp : ''
}
GLType class >> enum [
	"Returns the type's corresponding OpenGL enum value or nil if there is none."
	^ nil
]

{
	#category : #accessing,
	#timestamp : ''
}
GLType class >> enumName [
	"Returns the type's corresponding OpenGL enum name without the 'GL_' prefix"
	self subclassResponsibility
]

{
	#category : #accessing,
	#timestamp : ''
}
GLType class >> forEnum: anInteger [

	^ EnumTable at: anInteger
]

{
	#category : #'class initialization',
	#timestamp : ''
}
GLType class >> initialize [

	self initializeEnumTable
]

{
	#category : #'class initialization',
	#timestamp : ''
}
GLType class >> initializeEnumTable [

	EnumTable := Dictionary new: 120.
	self withAllSubclassesDo: [:cls |
		cls enum ifNotNil: [:enumValue |
			EnumTable at: enumValue put: cls instance]]
]

{
	#category : #accessing,
	#timestamp : ''
}
GLType class >> instance [

	^ instance ifNil: [instance := self basicNew initialize]
]

{
	#category : #'code generation',
	#timestamp : ''
}
GLType class >> removeAllSubclasses [

	self allSubclassesDo: [:cls | cls removeFromSystem]
]

{
	#category : #'code generation',
	#timestamp : ''
}
GLType class >> subclass: symbolOrString [

	^ self subclass: symbolOrString asSymbol
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: self category
]

{
	#category : #accessing,
	#timestamp : ''
}
GLType >> actualComponentType [

	^ self componentType
]

{
	#category : #accessing,
	#timestamp : ''
}
GLType >> componentType [

	^ self class componentType
]

{
	#category : #accessing,
	#timestamp : ''
}
GLType >> declarator [

	^ self class declarator
]

{
	#category : #accessing,
	#timestamp : ''
}
GLType >> numComponents [

	^ 1
]

{
	#category : #accessing,
	#timestamp : ''
}
GLType >> numElements [

	^ 1
]

{
	#category : #printing,
	#timestamp : ''
}
GLType >> printOn: aStream [

	self declarator
		ifNil: [super printOn: aStream]
		ifNotNil: [:declarator | aStream nextPutAll: declarator]
]

{
	#category : #'program resources',
	#timestamp : ''
}
GLType >> setUniform: aUniform toArray: aRawBitsArray [

	self setUniform: aUniform toArray: aRawBitsArray count: self numElements
]

{
	#category : #'program resources',
	#timestamp : ''
}
GLType >> setUniform: aUniform toArray: aRawBitsArray count: numElements [

	self subclassResponsibility
]

{
	#category : #'program resources',
	#timestamp : ''
}
GLType >> setUniform: aUniform toObject: anObject [

	self subclassResponsibility
]
