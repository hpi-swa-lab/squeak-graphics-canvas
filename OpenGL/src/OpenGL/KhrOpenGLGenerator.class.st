Class {
	#name : #KhrOpenGLGenerator,
	#superclass : #KhrRegistryVisitor,
	#instVars : [
		'featureClass'
	],
	#category : #'OpenGL-Generation',
	#commentStamp : ''
}

{
	#category : #'method sources',
	#timestamp : 'stlu 12/28/2020 16:50'
}
KhrOpenGLGenerator >> commandProtocol: definition [

	definition isRequire ifTrue: [^ #'api - required'].
	definition isRemove ifTrue: [^ #'api - removed']
]

{
	#category : #'method sources',
	#timestamp : 'stlu 12/28/2020 16:29'
}
KhrOpenGLGenerator >> commandSignature: aCommand [

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
	#timestamp : 'stlu 12/28/2020 16:45'
}
KhrOpenGLGenerator >> commandSource: definition [

	| args template |
	args := {
		self commandSignature: definition target.
		definition profile name.
		definition target ffiPragma.
	}.
	
	template := self commandTemplate: definition.
	
	^ template format: args
]

{
	#category : #'method sources',
	#timestamp : 'stlu 12/28/2020 18:52'
}
KhrOpenGLGenerator >> commandTemplate: definition [

	definition isRequire ifTrue: [
		^ definition profile isShared
			ifTrue: [self templateCommandRequireShared]
			ifFalse: [self templateCommandRequireInProfile]].
	definition isRemove ifTrue: [
		^ definition profile isShared
			ifTrue: [self templateRemoveShared]
			ifFalse: [self templateRemoveInProfile]].
]

{
	#category : #'method sources',
	#timestamp : 'stlu 12/28/2020 16:51'
}
KhrOpenGLGenerator >> enumProtocol: definition [

	definition isRequire ifTrue: [^ #'constants - required'].
	definition isRemove ifTrue: [^ #'constants - removed']
]

{
	#category : #'method sources',
	#timestamp : 'stlu 12/28/2020 18:17'
}
KhrOpenGLGenerator >> enumSignature: anEnum [

	| name |
	name := anEnum name.
	^ name fourth canBeIdentifierInitial
		ifTrue: [name allButFirst: 3 "remove GL_* prefix"]
		ifFalse: [name]
]

{
	#category : #'method sources',
	#timestamp : 'stlu 12/28/2020 18:54'
}
KhrOpenGLGenerator >> enumSource: definition [

	| args template |
	args := {
		self enumSignature: definition target.
		definition profile name.
		definition target name.
	}.
	
	template := self enumTemplate: definition.
	
	^ template format: args
]

{
	#category : #'method sources',
	#timestamp : 'stlu 12/28/2020 18:55'
}
KhrOpenGLGenerator >> enumTemplate: definition [

	definition isRequire ifTrue: [
		^ definition profile isShared
			ifTrue: [self templateEnumRequireShared]
			ifFalse: [self templateEnumRequireInProfile]].
	definition isRemove ifTrue: [
		^ definition profile isShared
			ifTrue: [self templateRemoveShared]
			ifFalse: [self templateRemoveInProfile]].
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/28/2020 13:29'
}
KhrOpenGLGenerator >> featureClass [

	^ featureClass
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/28/2020 13:30'
}
KhrOpenGLGenerator >> featureClass: aClass [

	featureClass := aClass
]

{
	#category : #utility,
	#timestamp : 'stlu 12/28/2020 13:30'
}
KhrOpenGLGenerator >> removeGeneratedMethodsIn: aClass [

	(Pragma allNamed: #generated in: aClass) do: [:pragma |
		aClass removeSelector: pragma method selector]
]

{
	#category : #'method sources',
	#timestamp : 'stlu 12/28/2020 18:22'
}
KhrOpenGLGenerator >> templateCommandRequireInProfile [

	^ '{1}
	"Note: Only available in {2} profile."
	<generated>
	{3}
	^ self externalCallFailed'
]

{
	#category : #'method sources',
	#timestamp : 'stlu 12/28/2020 16:21'
}
KhrOpenGLGenerator >> templateCommandRequireShared [

	^ '{1}

	<generated>
	{3}
	^ self externalCallFailed'
]

{
	#category : #'method sources',
	#timestamp : 'stlu 12/28/2020 18:23'
}
KhrOpenGLGenerator >> templateEnumRequireInProfile [

	^ '{1}
	"Note: Only available in {2} profile."
	<generated>
	^ {3}'
]

{
	#category : #'method sources',
	#timestamp : 'stlu 12/28/2020 18:53'
}
KhrOpenGLGenerator >> templateEnumRequireShared [

	^ '{1}

	<generated>
	^ {3}'
]

{
	#category : #'method sources',
	#timestamp : 'stlu 12/28/2020 18:20'
}
KhrOpenGLGenerator >> templateRemoveInProfile [

	^ '{1}

	<generated>
	profile == {2} ifTrue: [^ self profileError].
	^ super {1}'
]

{
	#category : #'method sources',
	#timestamp : 'stlu 12/28/2020 18:52'
}
KhrOpenGLGenerator >> templateRemoveShared [

	^ '{1}

	<generated>
	^ self versionError'
]

{
	#category : #visiting,
	#timestamp : 'stlu 12/28/2020 16:47'
}
KhrOpenGLGenerator >> visitCommandDefinition: definition [

	| source protocol |
	source := self commandSource: definition.
	protocol := self commandProtocol: definition.
	featureClass compile: source classified: protocol
]

{
	#category : #visiting,
	#timestamp : 'stlu 12/28/2020 16:40'
}
KhrOpenGLGenerator >> visitDefinition: definition [

	definition target isCommand ifTrue: [^ self visitCommandDefinition: definition].
	definition target isEnum ifTrue: [^ self visitEnumDefinition: definition].
]

{
	#category : #visiting,
	#timestamp : 'stlu 12/28/2020 16:51'
}
KhrOpenGLGenerator >> visitEnumDefinition: definition [

	| source protocol |
	source := self enumSource: definition.
	protocol := self enumProtocol: definition.
	featureClass compile: source classified: protocol
]

{
	#category : #visiting,
	#timestamp : 'stlu 12/28/2020 13:32'
}
KhrOpenGLGenerator >> visitFeature: feature [

	featureClass := GLLibrary
						api: feature api name
						majorVersion: feature name first digitValue
						minorVersion: feature name third digitValue.
	
	self removeGeneratedMethodsIn: featureClass theNonMetaClass.
	self removeGeneratedMethodsIn: featureClass theMetaClass.
	featureClass theNonMetaClass organization removeEmptyCategories.
	featureClass theMetaClass organization removeEmptyCategories.
	
	super visitFeature: feature
]

{
	#category : #visiting,
	#timestamp : 'stlu 12/28/2020 13:19'
}
KhrOpenGLGenerator >> visitRegistry: registry [

	| classVars |
	"generate constants pool"
	classVars := GLConstants classVarNames asSet.
	registry enums do: [:enum |
		(classVars includes: enum name) ifFalse: [
			GLConstants addClassVarName: enum name]].
	
	super visitRegistry: registry
]
