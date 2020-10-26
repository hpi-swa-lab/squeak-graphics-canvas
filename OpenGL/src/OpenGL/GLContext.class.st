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

	Smalltalk addToShutDownList: self.
	Smalltalk addToStartUpList: self
]

{ #category : #'system startup' }
GLContext class >> shutDown: quitting [

	quitting ifTrue: [
		self allSubInstancesDo: [:each |
			each destroy]]
]

{ #category : #'system startup' }
GLContext class >> startUp: resuming [

	resuming ifTrue: [
		self allSubInstancesDo: [:each |
			each becomeForward: #SuspendedGLContext]]
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
GLContext >> endFrame [

	self flag: #todo. "Not sure this belongs here"
	self subclassResponsibility
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

{ #category : #testing }
GLContext >> shouldClose [

	self flag: #todo. "This does not belong here"
	self subclassResponsibility
]

{ #category : #'initialize-release' }
GLContext >> swapBuffers [

	self subclassResponsibility
]
