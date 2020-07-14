Class {
	#name : #GLPlatform,
	#superclass : #Object,
	#pools : [
		'GLConstants'
	],
	#category : #'MPOpenGL-Core'
}

{ #category : #'platform detection' }
GLPlatform class >> identifyPlatform [
	Smalltalk platformName = 'Win32' ifTrue:[^GLWindowsPlatform].
	Smalltalk platformName = 'unix'
		ifTrue:
			[(Smalltalk windowSystemName = 'Quartz')
				"implicitly big endian"
				ifTrue: [ self shouldBeImplemented ].
				"default to X11 window system"
				Smalltalk isLittleEndian
					ifTrue: [ ^GLX11LEPlatform ]
					ifFalse: [ ^GLX11BEPlatform ]].
	Smalltalk platformName = 'Mac OS' ifTrue:[
		Smalltalk osVersion asNumber < 1000 
			ifTrue: [ self shouldBeImplemented ]
			ifFalse:[ ^GLMacOSPlatform ].
	].
	^self error:'Cannot identify platform'
]

{ #category : #initialize }
GLPlatform >> beginFrame: aGLInstance [
	"do nothing"
]
