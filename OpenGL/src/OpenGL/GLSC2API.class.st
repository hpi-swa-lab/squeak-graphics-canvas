Class {
	#name : #GLSC2API,
	#superclass : #GLLibrary,
	#category : #'OpenGL-API-GLSC2',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 2/18/2021 21:59'
}
GLSC2API class >> api [

	^ #glsc2
]

{
	#category : #parameters,
	#timestamp : 'stlu 2/18/2021 22:00'
}
GLSC2API >> getShadingLanguageVersion [

	| versionString tokens |
	versionString := self getShadingLanguageVersionString.
	"OpenGL SC GLSL ES <major>.<minor> <vendor-specific information>"
	tokens := versionString findTokens: '. '.
	^ { tokens fifth asInteger . tokens sixth asInteger }
]

{
	#category : #parameters,
	#timestamp : 'stlu 2/18/2021 22:00'
}
GLSC2API >> getVersion [

	| versionString tokens |
	versionString := self getVersionString.
	"OpenGL SC <major>.<minor> <vendor-specific information>"
	tokens := versionString findTokens: '. '.
	^ { tokens third asInteger . tokens fourth asInteger }
]
