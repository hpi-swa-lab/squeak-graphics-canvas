Class {
	#name : #KhrAPI,
	#superclass : #KhrRegistryObject,
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
KhrAPI class >> registry: registry name: aString [

	^ registry apis
		at: aString
		ifAbsentPut: [self new name: aString]
]

{
	#category : #visiting,
	#timestamp : 'stlu 12/28/2020 13:02'
}
KhrAPI >> acceptVisitor: aVisitor [

	^ aVisitor visitAPI: self
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 14:03'
}
KhrAPI >> addFeature: feature [

	features add: feature
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/31/2020 22:20'
}
KhrAPI >> features [

	^ features
]

{
	#category : #generation,
	#timestamp : 'stlu 11/12/2020 14:58'
}
KhrAPI >> generate [

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
KhrAPI >> initialize [

	super initialize.
	features := OrderedCollection new
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 13:34'
}
KhrAPI >> lastFeature [

	^ features
		ifNotEmpty: [features last]
		ifEmpty: [nil]
]

{
	#category : #printing,
	#timestamp : 'stlu 11/2/2020 14:26'
}
KhrAPI >> printOn: aStream [

	aStream
		nextPutAll: name asUppercase;
		nextPutAll: 'API'
]
