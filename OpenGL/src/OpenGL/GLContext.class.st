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

{ #category : #'class initialization' }
GLContext class >> initialize [

	Smalltalk addToShutDownList: self
]

{ #category : #'system startup' }
GLContext class >> shutDown [

	self allSubInstancesDo: [:each |
		each
			destroy;
			becomeForward: #SuspendedGLContext]
]

{ #category : #activation }
GLContext >> activate [

	self subclassResponsibility
]

{ #category : #activation }
GLContext >> deactivate [

	self subclassResponsibility
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
