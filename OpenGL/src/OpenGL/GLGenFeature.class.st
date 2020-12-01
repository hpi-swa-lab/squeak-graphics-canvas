Class {
	#name : #GLGenFeature,
	#superclass : #GLGenObject,
	#instVars : [
		'parent',
		'api',
		'profiles'
	],
	#category : #'OpenGL-Generation',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : 'stlu 11/2/2020 13:30'
}
GLGenFeature class >> registry: registry tag: featureTag [

	^ self new
		registry: registry tag: featureTag;
		yourself
]

{
	#category : #generation,
	#timestamp : 'stlu 11/3/2020 14:47'
}
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

{
	#category : #initialization,
	#timestamp : 'stlu 11/3/2020 14:24'
}
GLGenFeature >> getProfile: tag [

	^ tag attributes
		at: #profile
		ifPresent: [:profileName | GLGenProfile feature: self name: profileName asSymbol]
		ifAbsent: [self sharedProfile]
]

{
	#category : #initialization,
	#timestamp : 'stlu 11/2/2020 13:36'
}
GLGenFeature >> initialize [

	super initialize.
	profiles := Dictionary new
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/31/2020 22:19'
}
GLGenFeature >> parent [

	^ parent
]

{
	#category : #printing,
	#timestamp : 'stlu 11/2/2020 14:26'
}
GLGenFeature >> printOn: aStream [

	aStream nextPutAll: name
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 13:22'
}
GLGenFeature >> profiles [

	^ profiles
]

{
	#category : #initialization,
	#timestamp : 'stlu 11/2/2020 14:25'
}
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

{
	#category : #generation,
	#timestamp : 'stlu 11/2/2020 19:03'
}
GLGenFeature >> removeGeneratedMethodsIn: aClass [

	(Pragma allNamed: #generated in: aClass) do: [:pragma |
		aClass removeSelector: pragma method selector]
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/3/2020 14:24'
}
GLGenFeature >> sharedProfile [

	^ GLGenProfile feature: self name: #''
]
