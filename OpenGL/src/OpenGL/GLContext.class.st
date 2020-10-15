Class {
	#name : #GLContext,
	#superclass : #Object,
	#instVars : [
		'resources'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'OpenGL-Core'
}

{ #category : #'as yet unclassified' }
GLContext class >> initialize [
	"OpenGL initialize"
	Smalltalk addToShutDownList: self.

]

{ #category : #'as yet unclassified' }
GLContext class >> shutDown [ 
	self allSubInstancesDo: [:each | each destroy; becomeForward: #SuspendedGLContext].
]

{ #category : #'initialize-release' }
GLContext >> destroy [

	resources cleanup
]

{ #category : #'initialize-release' }
GLContext >> initialize [

	super initialize.
	resources := GLResources new
]

{ #category : #accessing }
GLContext >> resources [

	^ resources
]
