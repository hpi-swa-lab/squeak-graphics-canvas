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
	#category : #'OpenGL-Context',
	#commentStamp : ''
}

{
	#category : #'class initialization',
	#timestamp : ''
}
GLContext class >> initialize [

	Smalltalk addToShutDownList: self.
	Smalltalk addToStartUpList: self
]

{
	#category : #'system startup',
	#timestamp : ''
}
GLContext class >> shutDown: quitting [

	self flag: #todo. "Disabled for now. Not 100% necessary, mostly best practice."
	"quitting ifTrue: [
		self allSubInstancesDo: [:each |
			each destroy]]"
]

{
	#category : #'system startup',
	#timestamp : ''
}
GLContext class >> startUp: resuming [

	resuming ifTrue: [
		self allSubInstancesDo: [:each |
			"Replace existing contexts on startUp not shutDown to allow saving the image while contexts are active."
			each becomeForward: #DestroyedGLContext]]
]

{
	#category : #activation,
	#timestamp : ''
}
GLContext >> activate [

	self subclassResponsibility
]

{
	#category : #accessing,
	#timestamp : ''
}
GLContext >> api [

	^ api
]

{
	#category : #accessing,
	#timestamp : ''
}
GLContext >> api: anObject [

	api := anObject
]

{
	#category : #activation,
	#timestamp : ''
}
GLContext >> deactivate [

	self subclassResponsibility
]

{
	#category : #'initialize-release',
	#timestamp : ''
}
GLContext >> destroy [

	resources cleanUp
]

{
	#category : #'initialize-release',
	#timestamp : ''
}
GLContext >> endFrame [

	self flag: #todo. "Not sure this belongs here"
	self subclassResponsibility
]

{
	#category : #accessing,
	#timestamp : ''
}
GLContext >> extensions [

	^ extensions
]

{
	#category : #'initialize-release',
	#timestamp : ''
}
GLContext >> initialize [

	resources := GLResources new.
	self initializeLibrary.
	self initializeContextState
]

{
	#category : #'initialize-release',
	#timestamp : ''
}
GLContext >> initializeContextState [

	self assert: api isSymbol.
	
	extensions := library getExtensions
]

{
	#category : #'initialize-release',
	#timestamp : ''
}
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

{
	#category : #accessing,
	#timestamp : ''
}
GLContext >> library [

	self flag: #todo. "Stub for now until context refactoring."
	^ GL3_3 context: self
]

{
	#category : #accessing,
	#timestamp : ''
}
GLContext >> profile [

	^ profile
]

{
	#category : #resources,
	#timestamp : ''
}
GLContext >> registerObject: glObject [

	resources objects add: glObject
]

{
	#category : #accessing,
	#timestamp : ''
}
GLContext >> resources [

	^ resources
]

{
	#category : #accessing,
	#timestamp : ''
}
GLContext >> resources: anObject [

	resources := anObject
]

{
	#category : #testing,
	#timestamp : ''
}
GLContext >> shouldClose [

	self flag: #todo. "This does not belong here"
	self subclassResponsibility
]

{
	#category : #'initialize-release',
	#timestamp : ''
}
GLContext >> swapBuffers [

	self subclassResponsibility
]

{
	#category : #accessing,
	#timestamp : ''
}
GLContext >> version [

	^ version
]
