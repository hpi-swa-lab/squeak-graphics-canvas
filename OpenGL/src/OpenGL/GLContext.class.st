Class {
	#name : #GLContext,
	#superclass : #Object,
	#instVars : [
		'api',
		'bindings',
		'version',
		'profile',
		'extensions',
		'library',
		'resources',
		'errorCallback'
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
	#category : #bindings,
	#timestamp : 'stlu 11/30/2020 18:19'
}
GLContext >> bind: anObject to: target [

	^ bindings at: target put: anObject
]

{
	#category : #bindings,
	#timestamp : 'stlu 11/30/2020 18:19'
}
GLContext >> bindingOf: target [

	^ bindings at: target ifAbsent: [nil]
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/30/2020 17:53'
}
GLContext >> bindings [

	^ bindings
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
	#timestamp : 'stlu 12/1/2020 02:58'
}
GLContext >> initialize [

	resources := GLResources new.
	self initializeLibrary.
	self initializeContextState.
	self initializeBindings
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 12/1/2020 02:44'
}
GLContext >> initializeBindings [

	bindings := Dictionary new.
	GLObject allSubclassesDo: [:cls |
		(cls theMetaClass includesSelector: #initializeBindings:) ifTrue: [
			cls initializeBindings: self]]
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
	#timestamp : 'stlu 11/16/2020 01:23'
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
	#category : #bindings,
	#timestamp : 'stlu 12/1/2020 03:24'
}
GLContext >> unbind: target [

	bindings removeKey: target ifAbsent: []
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/9/2020 14:51'
}
GLContext >> version [

	^ version
]
