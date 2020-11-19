Class {
	#name : #GLGenFeature,
	#superclass : #GLGenObject,
	#instVars : [
		'parent',
		'api',
		'profiles'
	],
	#category : #'OpenGL-Generation'
}

{ #category : #'instance creation' }
GLGenFeature class >> registry: registry tag: featureTag [

	^ self new
		registry: registry tag: featureTag;
		yourself
]

{ #category : #generation }
GLGenFeature >> generateIn: aClass [

	self removeGeneratedMethodsIn: aClass theNonMetaClass.
	self removeGeneratedMethodsIn: aClass theMetaClass.
	aClass theNonMetaClass organization removeEmptyCategories.
	aClass theMetaClass organization removeEmptyCategories.
	
	self sharedProfile generateSharedIn: aClass.
	profiles
		do: [:profile | profile generateIn: aClass]
		without: self sharedProfile
]

{ #category : #initialization }
GLGenFeature >> getProfile: tag [

	^ tag attributes
		at: #profile
		ifPresent: [:profileName | GLGenProfile feature: self name: profileName asSymbol]
		ifAbsent: [self sharedProfile]
]

{ #category : #initialization }
GLGenFeature >> initialize [

	super initialize.
	profiles := Dictionary new
]

{ #category : #accessing }
GLGenFeature >> parent [

	^ parent
]

{ #category : #printing }
GLGenFeature >> printOn: aStream [

	aStream nextPutAll: name
]

{ #category : #accessing }
GLGenFeature >> profiles [

	^ profiles
]

{ #category : #initialization }
GLGenFeature >> registry: registry tag: featureTag [

	api := GLGenAPI registry: registry name: (featureTag attributes at: #api).
	api addFeature: self.
	parent := api lastFeature.
	name := featureTag attributes at: #number.
	
	featureTag tagsNamed: #require do: [:requireTag |
		(self getProfile: requireTag) registry: registry requireTag: requireTag].
	featureTag tagsNamed: #remove do: [:removeTag |
		(self getProfile: removeTag) registry: registry removeTag: removeTag]
]

{ #category : #generation }
GLGenFeature >> removeGeneratedMethodsIn: aClass [

	(Pragma allNamed: #generated in: aClass) do: [:pragma |
		aClass removeSelector: pragma method selector]
]

{ #category : #accessing }
GLGenFeature >> sharedProfile [

	^ GLGenProfile feature: self name: #''
]
