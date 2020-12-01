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
	#timestamp : 'stlu 11/23/2020 11:45'
}
GLType class >> compileAccessor: name value: return [

	self compileAccessor: name value: return classified: #accessing
]

{
	#category : #'code generation',
	#timestamp : 'stlu 11/23/2020 11:44'
}
GLType class >> compileAccessor: name value: return classified: category [

	self theMetaClass compile: name asString , '

	^ ' , return classified: category asSymbol
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/19/2020 18:00'
}
GLType class >> declarator [

	^ self declarators
		ifEmpty: [nil]
		ifNotEmpty: [:declarators | declarators first]
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/19/2020 17:58'
}
GLType class >> declarators [

	^ #()
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 12:46'
}
GLType class >> enum [
	"Returns the type's corresponding OpenGL enum value or nil if there is none."
	^ nil
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 12:46'
}
GLType class >> enumName [
	"Returns the type's corresponding OpenGL enum name without the 'GL_' prefix"
	self subclassResponsibility
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/19/2020 06:44'
}
GLType class >> forEnum: anInteger [

	^ EnumTable at: anInteger
]

{
	#category : #'class initialization',
	#timestamp : 'stlu 11/19/2020 06:19'
}
GLType class >> initialize [

	self initializeEnumTable
]

{
	#category : #'class initialization',
	#timestamp : 'stlu 11/19/2020 06:16'
}
GLType class >> initializeEnumTable [

	EnumTable := Dictionary new: 120.
	self withAllSubclassesDo: [:cls |
		cls enum ifNotNil: [:enumValue |
			EnumTable at: enumValue put: cls instance]]
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/19/2020 06:30'
}
GLType class >> instance [

	^ instance ifNil: [instance := self basicNew initialize]
]

{
	#category : #'code generation',
	#timestamp : 'stlu 11/23/2020 11:14'
}
GLType class >> removeAllSubclasses [

	self allSubclassesDo: [:cls | cls removeFromSystem]
]

{
	#category : #'code generation',
	#timestamp : 'stlu 11/19/2020 17:47'
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
	#timestamp : 'stlu 11/23/2020 18:09'
}
GLType >> actualComponentType [

	^ self componentType
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 16:33'
}
GLType >> componentType [

	^ self class componentType
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/19/2020 17:58'
}
GLType >> declarator [

	^ self class declarator
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:23'
}
GLType >> numComponents [

	^ 1
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 16:15'
}
GLType >> numElements [

	^ 1
]

{
	#category : #printing,
	#timestamp : 'stlu 11/19/2020 17:58'
}
GLType >> printOn: aStream [

	self declarator
		ifNil: [super printOn: aStream]
		ifNotNil: [:declarator | aStream nextPutAll: declarator]
]

{
	#category : #'program resources',
	#timestamp : 'stlu 11/23/2020 16:15'
}
GLType >> setUniform: aUniform toArray: aRawBitsArray [

	self setUniform: aUniform toArray: aRawBitsArray count: self numElements
]

{
	#category : #'program resources',
	#timestamp : 'stlu 11/23/2020 16:08'
}
GLType >> setUniform: aUniform toArray: aRawBitsArray count: numElements [

	self subclassResponsibility
]

{
	#category : #'program resources',
	#timestamp : 'stlu 11/23/2020 16:08'
}
GLType >> setUniform: aUniform toObject: anObject [

	self subclassResponsibility
]
