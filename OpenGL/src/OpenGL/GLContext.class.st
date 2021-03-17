Class {
	#name : #GLContext,
	#superclass : #Object,
	#instVars : [
		'library',
		'objectBindings',
		'objectStore',
		'wrapperImplementations',
		'programs',
		'userData',
		'api',
		'version',
		'profile',
		'extensions',
		'resources',
		'isDestroyed'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'OpenGL-Core',
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
	#timestamp : 'stlu 12/15/2020 13:59'
}
GLContext class >> startUp: resuming [

	self flag: #todo. "isDestroyed and isSymbol can both indicate destroyed contexts"
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
	#timestamp : 'stlu 12/3/2020 19:39'
}
GLContext >> api: aSymbol [

	api := aSymbol
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
	#timestamp : 'stlu 12/8/2020 16:16'
}
GLContext >> destroy [

	"objectStore do: [:each | each cleanUp]"
	isDestroyed := true
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
	#timestamp : 'stlu 12/13/2020 15:36'
}
GLContext >> initialize [

	isDestroyed := false.
	objectStore := OrderedCollection new.
	programs := IdentityDictionary new.
	userData := Dictionary new.
	self initializeLibrary.
	self initializeBindings.
	self initializeWrapperImplementations
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 3/14/2021 18:25'
}
GLContext >> initializeBindings [

	objectBindings := GLObjectBindings new.
	self flag: #todo. "do not depend on library class hierarchy"
	library makeCurrentDuring: [
		GLObject allSubclassesDo: [:cls |
			(cls theMetaClass includesSelector: #initializeBindings) ifTrue: [
				cls initializeBindings]]]
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 12/3/2020 18:45'
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
	
	"determine available extensions"
	extensions := library getExtensions.
	
	self deactivate
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 3/17/2021 12:33'
}
GLContext >> initializeWrapperImplementations [

	self flag: #todo. "always adheres to the context's library by default"
	wrapperImplementations := GLObjectImps forLibrary: library
]

{
	#category : #testing,
	#timestamp : 'stlu 12/8/2020 16:15'
}
GLContext >> isDestroyed [

	^ isDestroyed
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/3/2020 18:31'
}
GLContext >> library [

	^ library
]

{
	#category : #accessing,
	#timestamp : 'stlu 3/14/2021 18:25'
}
GLContext >> objectBindings [

	^ objectBindings
]

{
	#category : #accessing,
	#timestamp : 'stlu 3/17/2021 23:05'
}
GLContext >> objectImps [

	^ wrapperImplementations
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/9/2020 14:51'
}
GLContext >> profile [

	^ profile
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/3/2020 18:43'
}
GLContext >> programs [

	^ programs
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
	#timestamp : 'stlu 12/3/2020 18:57'
}
GLContext >> userData [

	^ userData
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/9/2020 14:51'
}
GLContext >> version [

	^ version
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/13/2020 15:38'
}
GLContext >> wrapperImplementations [

	^ wrapperImplementations
]
