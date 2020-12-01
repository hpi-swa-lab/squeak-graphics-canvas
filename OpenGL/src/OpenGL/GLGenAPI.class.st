Class {
	#name : #GLGenAPI,
	#superclass : #GLGenObject,
	#instVars : [
		'features'
	],
	#category : #'OpenGL-Generation',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : ''
}
GLGenAPI class >> registry: registry name: aString [

	^ registry apis
		at: aString
		ifAbsentPut: [self new name: aString]
]

{
	#category : #accessing,
	#timestamp : ''
}
GLGenAPI >> addFeature: feature [

	features add: feature
]

{
	#category : #accessing,
	#timestamp : ''
}
GLGenAPI >> features [

	^ features
]

{
	#category : #generation,
	#timestamp : ''
}
GLGenAPI >> generate [

	| rootClass |
	rootClass := GLLibrary api: name.
	features do: [:feature |
		| major minor featureClass |
		major := feature name first digitValue.
		minor := feature name third digitValue.
		featureClass := rootClass majorVersion: major minorVersion: minor.
		feature generateIn: featureClass]
]

{
	#category : #initialization,
	#timestamp : ''
}
GLGenAPI >> initialize [

	super initialize.
	features := OrderedCollection new
]

{
	#category : #accessing,
	#timestamp : ''
}
GLGenAPI >> lastFeature [

	^ features
		ifNotEmpty: [features last]
		ifEmpty: [nil]
]

{
	#category : #printing,
	#timestamp : ''
}
GLGenAPI >> printOn: aStream [

	aStream
		nextPutAll: name asUppercase;
		nextPutAll: 'API'
]
