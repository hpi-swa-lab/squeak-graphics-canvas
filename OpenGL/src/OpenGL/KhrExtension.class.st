Class {
	#name : #KhrExtension,
	#superclass : #KhrRegistryObject,
	#instVars : [
		'apis',
		'definitions'
	],
	#category : #'OpenGL-Generation',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : 'stlu 12/29/2020 21:50'
}
KhrExtension class >> registry: registry tag: featureTag [

	^ self new
		registry: registry tag: featureTag;
		yourself
]

{
	#category : #accessing,
	#timestamp : 'stlu 2/17/2021 17:47'
}
KhrExtension >> apis [

	^ apis
]

{
	#category : #accessing,
	#timestamp : 'stlu 2/17/2021 17:47'
}
KhrExtension >> definitions [

	^ definitions
]

{
	#category : #initialization,
	#timestamp : 'stlu 2/17/2021 17:42'
}
KhrExtension >> initialize [

	super initialize.
	definitions := OrderedCollection new.
	apis := OrderedCollection new
]

{
	#category : #initialization,
	#timestamp : 'stlu 2/17/2021 17:46'
}
KhrExtension >> registry: registry tag: extensionTag [

	name := extensionTag attributes at: #name.
	
	(extensionTag attributes at: #supported) findTokens: '|' do: [:apiName |
		apis add: apiName].
	"gl|glcore -> compat & core"
	
	extensionTag elementsDo: [:actionTag |
		actionTag elementsDo: [:targetTag |
			targetTag tag ~= #type ifTrue: [
				definitions add: (KhrDefinition
									registry: registry
									owner: self
									actionTag: actionTag
									targetTag: targetTag)]]].
	
	registry addExtension: self
]
