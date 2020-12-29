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
	#category : #visiting,
	#timestamp : 'stlu 12/28/2020 13:04'
}
KhrFeature >> acceptVisitor: aVisitor [

	^ aVisitor visitFeature: self
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/28/2020 13:27'
}
KhrFeature >> api [

	^ api
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
	#timestamp : 'stlu 12/28/2020 14:26'
}
KhrFeature >> registry: registry tag: featureTag [

	api := KhrAPI registry: registry name: (featureTag attributes at: #api).
	parent := api lastFeature.
	api addFeature: self.
	name := featureTag attributes at: #number.
	
	featureTag elementsDo: [:actionTag |
		(self getProfile: actionTag) registry: registry actionTag: actionTag]
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/28/2020 13:00'
}
KhrFeature >> sharedProfile [

	^ KhrProfile feature: self name: #''
]
