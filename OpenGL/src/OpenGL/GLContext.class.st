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
	#timestamp : 'stlu 10/26/2020 10:19'
}
GLContext class >> initialize [

	Smalltalk addToShutDownList: self.
	Smalltalk addToStartUpList: self
]

{
	#category : #'system startup',
	#timestamp : 'stlu 11/13/2020 14:17'
}
GLContext class >> shutDown: quitting [

	self flag: #todo. "Disabled for now. Not 100% necessary, mostly best practice."
	"quitting ifTrue: [
		self allSubInstancesDo: [:each |
			each destroy]]"
]

{
	#category : #'system startup',
	#timestamp : 'stlu 11/13/2020 14:22'
}
GLContext class >> startUp: resuming [

	resuming ifTrue: [
		self allSubInstancesDo: [:each |
			"Replace existing contexts on startUp not shutDown to allow saving the image while contexts are active."
			each becomeForward: #DestroyedGLContext]]
]

{
	#category : #activation,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GLContext >> activate [

	self subclassResponsibility
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/9/2020 14:51'
}
GLContext >> api [

	^ api
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/9/2020 14:51'
}
GLContext >> api: anObject [

	api := anObject
]

{
	#category : #activation,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GLContext >> deactivate [

	self subclassResponsibility
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 10/26/2020 12:06'
}
GLContext >> destroy [

	resources cleanUp
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 10/16/2020 12:25'
}
GLContext >> endFrame [

	self flag: #todo. "Not sure this belongs here"
	self subclassResponsibility
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/9/2020 14:51'
}
GLContext >> extensions [

	^ extensions
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 11/12/2020 15:30'
}
GLContext >> initialize [

	resources := GLResources new.
	self initializeLibrary.
	self initializeContextState
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 11/12/2020 15:30'
}
GLContext >> initializeContextState [

	self assert: api isSymbol.
	
	extensions := library getExtensions
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 11/12/2020 15:50'
}
GLContext >> initializeLibrary [

	| libraryClass |
	libraryClass := GLLibrary api: api.
	self activate.
	version := (libraryClass context: self) getVersion.
	libraryClass := libraryClass majorVersion: version first minorVersion: version second.
	profile := (libraryClass context: self) getProfile.
	self deactivate.
	library := libraryClass context: self profile: profile
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/26/2020 12:29'
}
GLContext >> library [

	self flag: #todo. "Stub for now until context refactoring."
	^ GL3_3 context: self
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/9/2020 14:51'
}
GLContext >> profile [

	^ profile
]

{
	#category : #resources,
	#timestamp : 'stlu 10/26/2020 12:30'
}
GLContext >> registerObject: glObject [

	resources objects add: glObject
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GLContext >> resources [

	^ resources
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/9/2020 14:51'
}
GLContext >> resources: anObject [

	resources := anObject
]

{
	#category : #testing,
	#timestamp : 'stlu 10/16/2020 12:23'
}
GLContext >> shouldClose [

	self flag: #todo. "This does not belong here"
	self subclassResponsibility
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 10/16/2020 12:24'
}
GLContext >> swapBuffers [

	self subclassResponsibility
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/9/2020 14:51'
}
GLContext >> version [

	^ version
]
