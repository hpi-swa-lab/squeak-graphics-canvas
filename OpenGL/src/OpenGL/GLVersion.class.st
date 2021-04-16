"
This is the main interface to the OpenGL library. 

displayList
displayListAlpha

David A. Smith
"
Class {
	#name : #GLVersion,
	#superclass : #Object,
	#instVars : [
		'profile'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'OpenGL-Versions',
	#commentStamp : 'stlu 11/13/2020 18:20'
}

{
	#category : #accessing,
	#timestamp : 'stlu 4/16/2021 10:23'
}
GLVersion class >> api [

	^ nil
]

{
	#category : #querying,
	#timestamp : 'stlu 4/16/2021 10:38'
}
GLVersion class >> api: aSymbol [

	^ GLVersion subclasses detect: [:cls | cls api = aSymbol]
]

{
	#category : #'instance creation',
	#timestamp : 'stlu 4/16/2021 10:25'
}
GLVersion class >> api: apiSymbol major: major minor: minor [

	^ ((self api: apiSymbol) major: major minor: minor) new
]

{
	#category : #'instance creation',
	#timestamp : 'stlu 4/16/2021 10:24'
}
GLVersion class >> api: apiSymbol major: major minor: minor profile: profileSymbol [

	^ ((self api: apiSymbol) major: major minor: minor) profile: profileSymbol
]

{
	#category : #accessing,
	#timestamp : 'stlu 2/18/2021 22:36'
}
GLVersion class >> defaultProfile [

	^ nil
]

{
	#category : #accessing,
	#timestamp : 'stlu 4/15/2021 18:02'
}
GLVersion class >> major [

	^ nil
]

{
	#category : #querying,
	#timestamp : 'stlu 4/16/2021 10:23'
}
GLVersion class >> major: major minor: minor [

	^ self withAllSubclasses detect: [:cls |
		cls major = major and: [cls minor = minor]]
]

{
	#category : #accessing,
	#timestamp : 'stlu 4/15/2021 18:01'
}
GLVersion class >> minor [

	^ nil
]

{
	#category : #'instance creation',
	#timestamp : 'stlu 4/15/2021 14:20'
}
GLVersion class >> new [

	^ self profile: self defaultProfile
]

{
	#category : #'instance creation',
	#timestamp : 'stlu 4/15/2021 18:07'
}
GLVersion class >> profile: aSymbol [

	^ self basicNew
		initializeWithProfile: aSymbol;
		yourself
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 15:11'
}
GLVersion >> api [

	^ self class api
]

{
	#category : #converting,
	#timestamp : 'stlu 4/16/2021 10:30'
}
GLVersion >> asNumber [

	self flag: #todo. "Do we really want to encourage this?"
	^ self major * 10 + self minor
]

{
	#category : #parameters,
	#timestamp : 'stlu 4/15/2021 19:11'
}
GLVersion >> getExtensions: aLibrary [

	^ Array streamContents: [:stream |
		aLibrary extensionsString splitBy: ' ' do: [:extensionName |
			stream nextPut: extensionName asSymbol]]
]

{
	#category : #parameters,
	#timestamp : 'stlu 4/15/2021 19:14'
}
GLVersion >> getShadingLanguageVersion: aLibrary [

	^ #(0 0) "by default unsupported"
]

{
	#category : #parameters,
	#timestamp : 'stlu 4/15/2021 19:19'
}
GLVersion >> getVersion: aLibrary [
	"Returns an array of two elements, the major version and the minor version."
	self subclassResponsibility
]

{
	#category : #initialization,
	#timestamp : 'stlu 4/15/2021 18:07'
}
GLVersion >> initializeWithProfile: aSymbol [

	profile := aSymbol
]

{
	#category : #accessing,
	#timestamp : 'stlu 4/15/2021 18:06'
}
GLVersion >> major [

	^ self class major
]

{
	#category : #accessing,
	#timestamp : 'stlu 4/15/2021 18:06'
}
GLVersion >> minor [

	^ self class minor
]

{
	#category : #'external functions',
	#timestamp : 'stlu 4/15/2021 19:19'
}
GLVersion >> moduleName [

	self subclassResponsibility
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/3/2020 12:53'
}
GLVersion >> profile [

	^ profile
]
