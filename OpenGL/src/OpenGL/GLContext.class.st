Class {
	#name : #GLContext,
	#superclass : #Object,
	#instVars : [
		'api',
		'version',
		'profile',
		'extensions',
		'library',
		'resources'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'OpenGL-Context'
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

{ #category : #accessing }
GLContext >> api [

	^ api
]

{ #category : #accessing }
GLContext >> api: anObject [

	api := anObject
]

{ #category : #activation }
GLContext >> deactivate [

	self subclassResponsibility
]

{ #category : #'initialize-release' }
GLContext >> destroy [

	resources cleanUp
]

{ #category : #'initialize-release' }
GLContext >> endFrame [

	self flag: #todo. "Not sure this belongs here"
	self subclassResponsibility
]

{ #category : #accessing }
GLContext >> extensions [

	^ extensions
]

{ #category : #'initialize-release' }
GLContext >> initialize [

	resources := GLResources new.
	
	self assert: api isSymbol
]

{ #category : #accessing }
GLContext >> library [

	self flag: #todo. "Stub for now until context refactoring."
	^ GL3_3 context: self
]

{ #category : #accessing }
GLContext >> profile [

	^ profile
]

{ #category : #resources }
GLContext >> registerObject: glObject [

	resources objects add: glObject
]

{ #category : #accessing }
GLContext >> resources [

	^ resources
]

{ #category : #accessing }
GLContext >> resources: anObject [

	resources := anObject
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

{ #category : #accessing }
GLContext >> version [

	^ version
]
