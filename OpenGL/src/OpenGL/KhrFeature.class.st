Class {
	#name : #KhrFeature,
	#superclass : #KhrRegistryObject,
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
KhrFeature class >> registry: registry tag: featureTag [

	^ self new
		registry: registry tag: featureTag;
		yourself
]

{
	#category : #generation,
	#timestamp : 'stlu 11/3/2020 14:47'
}
KhrFeature >> generateIn: aClass [

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
	#timestamp : 'stlu 12/28/2020 13:00'
}
KhrFeature >> getProfile: tag [

	^ tag attributes
		at: #profile
		ifPresent: [:profileName | KhrProfile feature: self name: profileName asSymbol]
		ifAbsent: [self sharedProfile]
]

{
	#category : #initialization,
	#timestamp : 'stlu 11/2/2020 13:36'
}
KhrFeature >> initialize [

	super initialize.
	profiles := Dictionary new
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/31/2020 22:19'
}
KhrFeature >> parent [

	^ parent
]

{
	#category : #printing,
	#timestamp : 'stlu 11/2/2020 14:26'
}
KhrFeature >> printOn: aStream [

	aStream nextPutAll: name
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 13:22'
}
KhrFeature >> profiles [

	^ profiles
]

{
	#category : #initialization,
	#timestamp : 'stlu 12/28/2020 12:59'
}
KhrFeature >> registry: registry tag: featureTag [

	api := KhrAPI registry: registry name: (featureTag attributes at: #api).
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
KhrFeature >> removeGeneratedMethodsIn: aClass [

	(Pragma allNamed: #generated in: aClass) do: [:pragma |
		aClass removeSelector: pragma method selector]
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/28/2020 13:00'
}
KhrFeature >> sharedProfile [

	^ KhrProfile feature: self name: #''
]
