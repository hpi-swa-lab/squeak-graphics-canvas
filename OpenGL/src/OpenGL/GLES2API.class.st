Class {
	#name : #GLES2API,
	#superclass : #GLLibrary,
	#category : #'OpenGL-API-GLES2',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 2/18/2021 21:57'
}
GLES2API class >> api [

	^ #gles2
]

{
	#category : #accessing,
	#timestamp : 'stlu 2/18/2021 22:37'
}
GLES2API class >> defaultProfile [

	^ #common
]

{
	#category : #accessing,
	#timestamp : 'stlu 2/18/2021 21:56'
}
GLES2API class >> moduleName [

	| platform version |
	platform := Smalltalk platformName.
	version := Smalltalk osVersion.
	platform = 'unix' ifTrue: [
		version = 'linux-gnu' ifTrue: [^ 'libGLESv2.so']].
	self notYetImplemented.
]

{
	#category : #parameters,
	#timestamp : 'stlu 2/18/2021 21:58'
}
GLES2API >> getShadingLanguageVersion [

	| versionString tokens |
	versionString := self getShadingLanguageVersionString.
	"OpenGL ES GLSL ES <major>.<minor> <vendor-specific information>"
	tokens := versionString findTokens: '. '.
	^ { tokens fifth asInteger . tokens sixth asInteger }
]

{
	#category : #parameters,
	#timestamp : 'stlu 2/18/2021 21:58'
}
GLES2API >> getVersion [

	| versionString tokens |
	versionString := self getVersionString.
	"OpenGL ES <major>.<minor> <vendor-specific information>"
	tokens := versionString findTokens: '. '.
	^ { tokens third asInteger . tokens fourth asInteger }
]
