Class {
	#name : #GLAPI,
	#superclass : #GLLibrary,
	#category : #'OpenGL-API-GL',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 2/18/2021 21:40'
}
GLAPI class >> api [

	^ #gl
]

{
	#category : #accessing,
	#timestamp : 'stlu 2/18/2021 22:37'
}
GLAPI class >> defaultProfile [

	^ #core
]

{
	#category : #accessing,
	#timestamp : 'stlu 2/18/2021 21:41'
}
GLAPI class >> moduleName [

	| platform version |
	platform := Smalltalk platformName.
	version := Smalltalk osVersion.
	platform = 'Win32' ifTrue: [^ 'opengl32.dll'].
	platform = 'Mac OS' ifTrue:[
		version asNumber >= 1000 ifTrue: [^ 'OpenGL.framework'].
		^ self notYetImplemented].
	platform = 'unix' ifTrue: [
		"default to X11 window system"
		^ version = 'linux-gnu'
			ifTrue: ['libGL.so']
			ifFalse: ['GL']].
	self error: 'Cannot identify platform'
]

{
	#category : #parameters,
	#timestamp : 'stlu 2/18/2021 22:05'
}
GLAPI >> getShadingLanguageVersion [

	| versionString tokens |
	versionString := self getShadingLanguageVersionString.
	"<major>.<minor>[.<release>] <vendor-specific information>"
	tokens := versionString findTokens: '. '.
	^ { tokens first asInteger . tokens second asInteger }
]

{
	#category : #parameters,
	#timestamp : 'stlu 2/18/2021 21:43'
}
GLAPI >> getVersion [

	| versionString tokens |
	versionString := self getVersionString.
	"<major>.<minor>[.<release>] <vendor-specific information>"
	tokens := versionString findTokens: '. '.
	^ { tokens first asInteger . tokens second asInteger }
]
