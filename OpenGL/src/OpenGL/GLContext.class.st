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

	self flag: #todo. "Disabled for now. Not 100% necessary, mostly best practice."
	"quitting ifTrue: [
		self allSubInstancesDo: [:each |
			each destroy]]"
]

{ #category : #'system startup' }
GLContext class >> startUp: resuming [

	resuming ifTrue: [
		self allSubInstancesDo: [:each |
			"Replace existing contexts on startUp not shutDown to allow saving the image while contexts are active."
			each becomeForward: #DestroyedGLContext]]
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
	self initializeLibrary.
	self initializeContextState
]

{ #category : #'initialize-release' }
GLContext >> initializeContextState [

	self assert: api isSymbol.
	
	extensions := library getExtensions
]

{ #category : #'initialize-release' }
GLContext >> initializeLibrary [

	| libraryClass |
	self activate.
	
	"determine the version"
	libraryClass := GLLibrary api: api.
	library := libraryClass context: self.
	version := library getVersion.
	library checkForError. "just called 1st OpenGL command - check it worked"
	
	"determine the profile"
	libraryClass := libraryClass majorVersion: version first minorVersion: version second.
	library := libraryClass context: self.
	profile := library getProfile.
	library checkForError.
	library := libraryClass context: self profile: profile.
	
	self deactivate
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
