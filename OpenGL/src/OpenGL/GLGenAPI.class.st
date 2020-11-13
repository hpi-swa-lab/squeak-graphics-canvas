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
	#timestamp : 'stlu 11/2/2020 14:08'
}
GLGenAPI class >> registry: registry name: aString [

	^ registry apis
		at: aString
		ifAbsentPut: [self new name: aString]
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 14:03'
}
GLGenAPI >> addFeature: feature [

	features add: feature
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/31/2020 22:20'
}
GLGenAPI >> features [

	^ features
]

{
	#category : #generation,
	#timestamp : 'stlu 11/12/2020 14:58'
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
	#timestamp : 'stlu 11/2/2020 14:02'
}
GLGenAPI >> initialize [

	super initialize.
	features := OrderedCollection new
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 13:34'
}
GLGenAPI >> lastFeature [

	^ features
		ifNotEmpty: [features last]
		ifEmpty: [nil]
]

{
	#category : #printing,
	#timestamp : 'stlu 11/2/2020 14:26'
}
GLGenAPI >> printOn: aStream [

	aStream
		nextPutAll: name asUppercase;
		nextPutAll: 'API'
]
