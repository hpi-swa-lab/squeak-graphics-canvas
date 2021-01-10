Class {
	#name : #GLUnknownProgramResource,
	#superclass : #Warning,
	#instVars : [
		'program',
		'resourceClass',
		'resourceName'
	],
	#category : #'OpenGL-Wrappers-Programs',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : 'stlu 1/10/2021 23:09'
}
GLUnknownProgramResource class >> program: aProgram resourceClass: aProgramResourceClass resourceName: aString [

	^ self new
		program: aProgram;
		resourceClass: aProgramResourceClass;
		resourceName: aString;
		yourself
]

{
	#category : #defaults,
	#timestamp : 'stlu 1/10/2021 22:57'
}
GLUnknownProgramResource >> defaultResumeValue [

	^ true
]

{
	#category : #accessing,
	#timestamp : 'stlu 1/10/2021 23:15'
}
GLUnknownProgramResource >> program [

	^ program
]

{
	#category : #accessing,
	#timestamp : 'stlu 1/10/2021 23:15'
}
GLUnknownProgramResource >> program: anObject [

	program := anObject
]

{
	#category : #accessing,
	#timestamp : 'stlu 1/10/2021 23:09'
}
GLUnknownProgramResource >> resourceClass [

	^ resourceClass
]

{
	#category : #accessing,
	#timestamp : 'stlu 1/10/2021 23:09'
}
GLUnknownProgramResource >> resourceClass: anObject [

	resourceClass := anObject
]

{
	#category : #accessing,
	#timestamp : 'stlu 1/10/2021 22:36'
}
GLUnknownProgramResource >> resourceName [

	^ resourceName
]

{
	#category : #accessing,
	#timestamp : 'stlu 1/10/2021 22:36'
}
GLUnknownProgramResource >> resourceName: anObject [

	resourceName := anObject
]
