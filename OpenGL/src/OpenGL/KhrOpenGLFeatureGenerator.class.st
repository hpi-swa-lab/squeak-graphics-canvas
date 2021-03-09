Class {
	#name : #KhrOpenGLFeatureGenerator,
	#superclass : #KhrRegistryVisitor,
	#instVars : [
		'featureClass'
	],
	#category : #'OpenGL-Generation',
	#commentStamp : ''
}

{
	#category : #utility,
	#timestamp : 'stlu 2/22/2021 13:07'
}
KhrOpenGLFeatureGenerator >> cleanUp: aClass [

	self removeGeneratedMethodsIn: aClass theNonMetaClass.
	self removeGeneratedMethodsIn: aClass theMetaClass.
	aClass theNonMetaClass organization removeEmptyCategories.
	aClass theMetaClass organization removeEmptyCategories.
]

{
	#category : #'method sources',
	#timestamp : 'stlu 12/28/2020 16:50'
}
KhrOpenGLFeatureGenerator >> commandProtocol: definition [

	definition isRequire ifTrue: [^ #'api - required'].
	definition isRemove ifTrue: [^ #'api - removed']
]

{
	#category : #'method sources',
	#timestamp : 'stlu 12/28/2020 16:29'
}
KhrOpenGLFeatureGenerator >> commandSignature: aCommand [

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
	#timestamp : 'stlu 2/12/2021 00:38'
}
KhrOpenGLFeatureGenerator >> commandSource: definition [

	| args template |
	args := {
		self commandSignature: definition target.
		definition profile name storeString.
		definition target ffiPragma.
	}.
	
	template := self commandTemplate: definition.
	
	^ template format: args
]

{
	#category : #'method sources',
	#timestamp : 'stlu 2/22/2021 13:14'
}
KhrOpenGLFeatureGenerator >> commandTemplate: definition [

	definition isRequire ifTrue: [^ self templateCommandRequire].
	definition isRemove ifTrue: [^ self templateRemove].
	^ nil
]

{
	#category : #'method sources',
	#timestamp : 'stlu 12/28/2020 16:51'
}
KhrOpenGLFeatureGenerator >> enumProtocol: definition [

	definition isRequire ifTrue: [^ #'constants - required'].
	definition isRemove ifTrue: [^ #'constants - removed']
]

{
	#category : #'method sources',
	#timestamp : 'stlu 12/28/2020 18:17'
}
KhrOpenGLFeatureGenerator >> enumSignature: anEnum [

	| name |
	name := anEnum name.
	^ name fourth canBeIdentifierInitial
		ifTrue: [name allButFirst: 3 "remove GL_* prefix"]
		ifFalse: [name]
]

{
	#category : #'method sources',
	#timestamp : 'stlu 2/12/2021 00:39'
}
KhrOpenGLFeatureGenerator >> enumSource: definition [

	| args template |
	args := {
		self enumSignature: definition target.
		definition profile name storeString.
		definition target name.
	}.
	
	template := self enumTemplate: definition.
	
	^ template format: args
]

{
	#category : #'method sources',
	#timestamp : 'stlu 2/22/2021 13:14'
}
KhrOpenGLFeatureGenerator >> enumTemplate: definition [

	definition isRequire ifTrue: [^ self templateEnumRequire].
	definition isRemove ifTrue: [^ self templateRemove].
	^ nil
]

{
	#category : #accessing,
	#timestamp : 'stlu 2/22/2021 12:28'
}
KhrOpenGLFeatureGenerator >> featureClass [

	^ featureClass
]

{
	#category : #accessing,
	#timestamp : 'stlu 2/22/2021 12:28'
}
KhrOpenGLFeatureGenerator >> featureClass: anObject [

	featureClass := anObject
]

{
	#category : #'method sources',
	#timestamp : 'stlu 2/22/2021 13:13'
}
KhrOpenGLFeatureGenerator >> templateCommandRequire [

	^ '{1}

	<generated>
	{3}
	^ self externalCallFailed'
]

{
	#category : #'method sources',
	#timestamp : 'stlu 12/28/2020 18:22'
}
KhrOpenGLFeatureGenerator >> templateCommandRequireInProfile [

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
KhrOpenGLFeatureGenerator >> templateCommandRequireShared [

	^ '{1}

	<generated>
	{3}
	^ self externalCallFailed'
]

{
	#category : #'method sources',
	#timestamp : 'stlu 2/22/2021 13:11'
}
KhrOpenGLFeatureGenerator >> templateEnumRequire [

	^ '{1}

	<generated>
	^ {3}'
]

{
	#category : #'method sources',
	#timestamp : 'stlu 12/28/2020 18:23'
}
KhrOpenGLFeatureGenerator >> templateEnumRequireInProfile [

	^ '{1}
	"Note: Only available in {2} profile."
	<generated>
	^ {3}'
]

{
	#category : #'method sources',
	#timestamp : 'stlu 12/28/2020 18:53'
}
KhrOpenGLFeatureGenerator >> templateEnumRequireShared [

	^ '{1}

	<generated>
	^ {3}'
]

{
	#category : #'method sources',
	#timestamp : 'stlu 2/22/2021 13:12'
}
KhrOpenGLFeatureGenerator >> templateRemove [

	^ '{1}

	<generated>
	self profileError'
]

{
	#category : #'method sources',
	#timestamp : 'stlu 12/28/2020 18:20'
}
KhrOpenGLFeatureGenerator >> templateRemoveInProfile [

	^ '{1}

	<generated>
	profile == {2} ifTrue: [^ self profileError].
	^ super {1}'
]

{
	#category : #'method sources',
	#timestamp : 'stlu 12/28/2020 18:52'
}
KhrOpenGLFeatureGenerator >> templateRemoveShared [

	^ '{1}

	<generated>
	^ self versionError'
]

{
	#category : #visiting,
	#timestamp : 'stlu 12/28/2020 16:47'
}
KhrOpenGLFeatureGenerator >> visitCommandDefinition: definition [

	| source protocol |
	source := self commandSource: definition.
	protocol := self commandProtocol: definition.
	featureClass compile: source classified: protocol
]

{
	#category : #visiting,
	#timestamp : 'stlu 12/28/2020 16:51'
}
KhrOpenGLFeatureGenerator >> visitEnumDefinition: definition [

	| source protocol |
	source := self enumSource: definition.
	protocol := self enumProtocol: definition.
	featureClass compile: source classified: protocol
]

{
	#category : #visiting,
	#timestamp : 'stlu 2/22/2021 13:09'
}
KhrOpenGLFeatureGenerator >> visitFeature: feature [

	| major minor apiName |
	apiName := feature api name.
	major := feature name first digitValue.
	minor := feature name third digitValue.
	
	(apiName = #gl and: [major >= 3] and: [minor >= 2])
		ifTrue: [
			#(core compatibility) do: [:profileName |
				featureClass := GLLibrary
									api: apiName
									majorVersion: major
									minorVersion: minor
									profile: profileName.
				self cleanUp: featureClass.
				self visit: feature sharedProfile.
				feature profiles at: profileName ifPresent: [:profile |
					self visit: profile]]]
		ifFalse: [
			featureClass := GLLibrary
								api: apiName
								majorVersion: major
								minorVersion: minor.
			self cleanUp: featureClass.
			feature profiles do: [:profile |
				self visit: profile]].
]
