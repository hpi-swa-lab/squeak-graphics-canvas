Class {
	#name : #GLGenAPI,
	#superclass : #GLGenObject,
	#instVars : [
		'features'
	],
	#category : #'OpenGL-Generation'
}

{ #category : #'instance creation' }
GLGenAPI class >> registry: registry name: aString [

	^ registry apis
		at: aString
		ifAbsentPut: [self new name: aString]
]

{ #category : #accessing }
GLGenAPI >> addFeature: feature [

	features add: feature
]

{ #category : #accessing }
GLGenAPI >> features [

	^ features
]

{ #category : #generation }
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

{ #category : #initialization }
GLGenAPI >> initialize [

	super initialize.
	features := OrderedCollection new
]

{ #category : #accessing }
GLGenAPI >> lastFeature [

	^ features
		ifNotEmpty: [features last]
		ifEmpty: [nil]
]

{ #category : #printing }
GLGenAPI >> printOn: aStream [

	aStream
		nextPutAll: name asUppercase;
		nextPutAll: 'API'
]
