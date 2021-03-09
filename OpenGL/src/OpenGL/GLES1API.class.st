Class {
	#name : #GLES1API,
	#superclass : #GLLibrary,
	#category : #'OpenGL-API-GLES1',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 2/18/2021 21:53'
}
GLES1API class >> api [

	^ #gles1
]

{
	#category : #accessing,
	#timestamp : 'stlu 2/18/2021 22:37'
}
GLES1API class >> defaultProfile [

	^ #common
]

{
	#category : #accessing,
	#timestamp : 'stlu 2/18/2021 21:52'
}
GLES1API class >> moduleName [

	| platform version |
	platform := Smalltalk platformName.
	version := Smalltalk osVersion.
	platform = 'unix' ifTrue: [
		version = 'linux-gnu' ifTrue: [^ 'libGLESv1_CM.so'].
		^ self notYetImplemented].
	self notYetImplemented
]

{
	#category : #parameters,
	#timestamp : 'stlu 2/18/2021 21:52'
}
GLES1API >> getVersion [

	| versionString tokens |
	versionString := self getVersionString.
	"OpenGL ES-XX N.M" "XX={CM,CL}"
	tokens := versionString findTokens: '. '.
	^ { tokens third asInteger . tokens fourth asInteger }
]
